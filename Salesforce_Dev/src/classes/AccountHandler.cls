public class AccountHandler {

     
    public static Account insertNewAccount(string AccName){
        try {
            Account acc = new Account();
            acc.name = AccName;
            insert acc;
            return acc;
            }
            catch(DMLException e) {
                system.debug('Database Error Occured' + e.getMessage());
                return null;
            }
        
        
    }
    
}