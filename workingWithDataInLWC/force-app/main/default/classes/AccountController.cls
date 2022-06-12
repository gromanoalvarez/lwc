public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {

        //agrego para probar errors
        throw new AuraHandledException('Forced error');

        /* Lo comento para probar el manejo de errores:
        return [
            SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];
        */
    }
}