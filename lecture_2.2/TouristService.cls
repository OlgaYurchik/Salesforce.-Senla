public class TouristService {
    
    public static void markDuplicates(List <Tourist__c> newTourists) {
        List <Tourist__c> touristsToUpdate = new List<Tourist__c>();
        
        for (Integer i = 0; i < newTourists.size() - 1; i++){
            Tourist__c tourist = newTourists.get(i);
            
            for (Integer j = i + 1; j < newTourists.size(); j++){
                Tourist__c touristToCompare = newTourists.get(j);
                
                Boolean isSameName = (tourist.Name == touristToCompare.Name);
                Boolean isSameEmail = (tourist.Tourist_Email__c == touristToCompare.Tourist_Email__c);
                if(isSameName && isSameEmail){
                    tourist.IsDuplicate__c = true;
                    touristsToUpdate.add(tourist);
                }
            }
        }
        update touristsToUpdate;
    }
}