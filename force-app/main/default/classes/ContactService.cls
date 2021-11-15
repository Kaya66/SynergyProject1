public with sharing class ContactService {
    @AuraEnabled(cacheable=true)
    public static List<sObject> getContacts() {
        return [SELECT Name, ProductCode FROM Product2];
    }
}