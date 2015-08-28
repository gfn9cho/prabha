public class RandomContactFactory {
    
    public static list<contact> generateRandomContacts(Integer NumOfContacts, String LastName){
        list<contact> randomContact = new list<contact>();
        for (Integer i=0; i<NumofContacts; i++){
            randomContact.add(new contact(firstname='TestName' + i,
                                         lastname = LastName));
        }
        return randomContact;
    }

}