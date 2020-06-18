@isTest
private class TestLanguageCourseTrigger {

    @isTest static testTrigger() {
        Language_Course__c course = new Language_Course__c();
        Test.startTest();
        Database.SaveResult result = Database.insert(course, false);
        Test.stopTest();

        Integer invocations = Limits.getEmailInvocations();
        System.assertEquals(1, invocations, 'An email should be sent');
    }
}
