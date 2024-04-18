public inherited sharing class SObjectNameCaseChange implements TriggerAction.BeforeUpdate, TriggerAction.BeforeInsert {
	public void beforeInsert(List<SObject> newList) {
		for (SObject s : newList) {
			String sn = (String) s.get('Name');
			sn = sn.toUpperCase();
			s.put('Name', sn);
			//s.Name = s.Name.toUpperCase();
		}
	}

	public void beforeUpdate(List<SObject> newList, List<SObject> oldList) {
		for (SObject s : newList) {
			String sn = (String) s.get('Name');
			sn = sn.toLowerCase();
			s.put('Name', sn);
		}
	}
}
