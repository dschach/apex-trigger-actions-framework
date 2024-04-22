public with sharing class SObjectDeletePreventionHandler implements TriggerAction.BeforeDelete {
	public void beforeDelete(List<SObject> oldList) {
		for (SObject s : oldList) {
			s.addError('Cannot do deletions');
		}
	}
}