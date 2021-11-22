public class deleteCaseClass {
    public static void deleteCaseClassMethod(Map<Id, Account> oldAccMap) {
        List<Case> cases = [SELECT AccountId FROM Case];
        List<Account> accs = [SELECT Name FROM Account WHERE Name IN :oldAccMap.KeySet()];













        //for(Case c: cases){
        //    if( == c){
                //try{
                    //delete c.cases;
                //}catch(DmlException e){
        //            System.debug('This DML Exception has occured: ');
                //}
    //        }
            
    //    }
    }
}