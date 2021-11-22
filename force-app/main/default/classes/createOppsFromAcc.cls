public with sharing class createOppsFromAcc {
    public static void createOppsFromAcc(List<account> newAcc) {
        List<Opportunity> newOps = new List<Opportunity>();
        date currentDatePlus = date.today();
        

        for(Account a: newAcc){
           newOps.add(new Opportunity(AccountId = a.id, name=a.name, StageName='Prospecting', CloseDate=currentDatePlus.addDays(14)));

        }
        insert newOps;
    }
}