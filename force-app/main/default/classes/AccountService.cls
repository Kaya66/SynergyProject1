public with sharing class AccountService {
   @AuraEnabled(cacheable=true)
   public static List<Account> getAccount(){
    return [SELECT Name, AccountNumber, Industry  FROM Account];
   }

}