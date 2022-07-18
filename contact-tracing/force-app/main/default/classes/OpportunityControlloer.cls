public class OpportunityControlloer {
    
    public static void updateProfile(List<Id> oppIds){
        
        List<Opportunity> opps = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN: oppIds];
            
            for(Opportunity opp: opps){
                if(opp.Amount == null) opp.Profile__c='';
                else if(opp.Amount<10000) opp.Profile__c='Low';
                else if(opp.Amount<50000) opp.Profile__c='Hight';
                else opp.Profile__c='Medium';
            }
        
        update opps;
            
    }

}