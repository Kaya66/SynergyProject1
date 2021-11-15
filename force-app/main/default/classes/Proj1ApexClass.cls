public class Proj1ApexClass {
    
    public static void CaseVerify(List<Case> newCase) {
        Set<String> newEmails = new Set<String>();
        for(Case c : newCase) {
            if(c.SuppliedEmail != null) {
            	newEmails.add(c.SuppliedEmail);
            }
        }
        
        List<Case> existingCase = [SELECT SuppliedName, SuppliedEmail FROM Case WHERE SuppliedEmail in: newEmails];
        
        Set<String> existingEmails = new Set<String>();
        for(Case c : existingCase) {
            existingEmails.add(c.SuppliedEmail);
        }
        
        for(Case c : newCase) {
            if(existingEmails.contains(c.SuppliedEmail)) {
                c.SuppliedEmail.addError('Can\'t create Case because the email provided is already associated with an ' +
                                 'existing Case.');
            }
        }
    }   
}