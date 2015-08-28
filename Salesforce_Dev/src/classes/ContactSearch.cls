public class ContactSearch {
    
    public static list<contact> searchForContacts(string lname, string postalcode) {
        list<contact> cntct = new list<contact>();
        cntct=[select name from contact where lastname =: lname and MailingPostalCode =: postalcode];
        return cntct;
        
    }

}