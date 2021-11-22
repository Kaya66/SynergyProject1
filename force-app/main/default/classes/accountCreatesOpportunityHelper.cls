public with sharing class accountCreatesOpportunityHelper {
    public static void accountCreatesOpportunityHelperMethod(List<Account> newAcc) {
        List<Account> accNameIdList = new List<Account>();

        for(Account a: newAcc){
            //accNameIdList.put(a.Name);
        }
        
        try{
            insert accNameIdList;
        }catch(DmlException e){
            System.debug('The following exception has occurred: ' + e.getMessage());
        }
        
        
    }
        
}

        
//        for(Account a: newAcc){
//            accNameIdMap.put(a.Name, a.Id);