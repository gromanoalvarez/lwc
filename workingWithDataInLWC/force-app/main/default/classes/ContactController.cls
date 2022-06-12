public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {

                //agrego para probar errors
                throw new AuraHandledException('Forced error');
                
                /* Lo comento para probar el manejo de errores:
        return [
            SELECT FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
            ORDER BY LastName
        ];
        */
    }
}