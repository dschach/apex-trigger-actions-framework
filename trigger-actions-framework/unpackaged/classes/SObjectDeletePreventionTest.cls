@isTest
public with sharing class SObjectDeletePreventionTest {
	@IsTest
	private static void deleteOpportunityShouldBeBlocked() {
		List<Opportunity> oldList = new List<Opportunity>();
		//generate fake Id
		Id myRecordId = TriggerTestUtility.getFakeId(Opportunity.SObjectType);
		String oppStage = [
			SELECT Id, MasterLabel, ApiName
			FROM OpportunityStage
			WHERE IsClosed = FALSE AND IsActive = TRUE
			ORDER BY DefaultProbability ASC
			LIMIT 1
		]
		.APIName;
		oldList.add(new Opportunity(Id = myRecordId, StageName = oppStage));

		new SObjectDeletePreventionHandler().beforeDelete(oldList);

		//Use getErrors() SObject method to get errors from addError without performing DML
		System.assertEquals(true, oldList[0].hasErrors(), 'The record should have errors');
		System.assertEquals(1, oldList[0].getErrors().size(), 'There should be exactly one error');
	}
}