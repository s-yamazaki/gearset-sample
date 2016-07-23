public class ContactController {

    public List<Contact> getAll() {
        return [SELECT Id, Name FROM Contact];
    }
    
    public Contact create(String firstName, String lastName) {
    	Contact con =  new Contact(FirstName = firstName, LastName = lastName);
        insert con;
        return con;
    }
}
