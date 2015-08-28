@isTest
public class TestRestrictContactByName {
    
    @isTest static void passinvalidName(){
        
        Contact c = new Contact(LastName = 'INVALIDNAME');
        
        Test.starttest();
        Database.saveresult result = Database.insert(C, false);
        Test.stopTest();
        
        system.assert(!result.issuccess());
        system.assert(result.getErrors().size() > 0);
        system.assertEquals('The Last Name INVALIDNAME is not allowed for DML', result.getErrors()[0].getMessage());
            
    }
    
        @isTest static void passvalidName(){
        
        Contact c = new Contact(LastName = 'Mowry');
        
        Test.starttest();
        Database.saveresult result = Database.insert(C, false);
        Test.stopTest();
        
        system.assert(result.issuccess());
        system.assert(result.getErrors().size() == 0);            
    }

}