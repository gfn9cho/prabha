public class ContactAndLeadSearch {

    public static list<list<sObject>> searchContactsAndLeads(string names) {
        list<list<sObject>> contactsandleads = [find :names in name fields returning contact, lead];
        system.debug('leads and conctacts:' + contactsandleads.size());
        return contactsandleads;
        
    }
}