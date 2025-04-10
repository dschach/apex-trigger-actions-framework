/*
   Copyright 2024 Google LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

	https://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
@SuppressWarnings('PMD.CatchSpecificExceptionType')
@IsTest(isParallel=true)
private class TriggerRecordTest {
	@IsTest
	private static void shouldBeAbleToConstructATriggerRecord() {
		Exception caught;
		try {
			AccountTriggerRecord triggerRecord = new AccountTriggerRecord();
			triggerRecord.newSobject = new Account();
			triggerRecord.oldSObject = new Account();
		} catch (Exception e) {
			caught = e;
		}
		System.Assert.isNull(
			caught,
			'Caught an unexpected Exception when constructing a TriggerRecord.'
		);
	}

	private class AccountTriggerRecord extends TriggerRecord {
	}
}