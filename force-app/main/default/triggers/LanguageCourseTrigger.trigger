trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
  for(Language_Course__c l : Trigger.New){
    EmailManager.sendMail('Reciever email address', 'Language Course', 
                    'Meet changes on Language Course!');
    }
  }