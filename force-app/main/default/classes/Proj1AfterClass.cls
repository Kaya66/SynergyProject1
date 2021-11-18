public class Proj1AfterClass {
    public static void Proj1AfterClass(List<Account> oldacc) {
        
        List<Case> cases = [SELECT AccountId, ContactEmail FROM Cases];

        for(Case c: cases){
            if(oldacc.Name == c.AccountId){
                delete c.Cases;
            }
        }
            
    }
}

// DELETE CASES ASSOCIATED WITH ACCOUNT THAT IS BEING DELETED