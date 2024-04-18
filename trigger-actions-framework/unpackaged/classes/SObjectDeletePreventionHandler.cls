public with sharing class SObjectDeletePreventionHandler implements TriggerAction.BeforeDelete {
	public void beforeDelete(List<SObject> newList) {
		for (SObject s : newList) {
			s.addError('Cannot do deletions');
		}
	}
}
