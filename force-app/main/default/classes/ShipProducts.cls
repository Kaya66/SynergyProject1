public with sharing class ShipProducts {
    @AuraEnabled(cacheable=true)

    public static List<sObject> getShips() {
        return [SELECT Name, ProductCode FROM Product2];
    }
}