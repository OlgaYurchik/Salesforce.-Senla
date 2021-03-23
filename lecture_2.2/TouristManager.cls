public class TouristManager {
    
    public static List<Tourist__c> getTouristsByName(String touristName) {
        if (touristName == null) {
        return new List<Tourist__c>();
        }
        
        String nameInclude = '%' + touristName + '%';
        
        List<Tourist__c> listOfTourists = [
            SELECT Age__c,
            	   Name
            FROM Tourist__c
            WHERE Name LIKE: nameInclude
        ];
        return listOfTourists;
    }
    
    public static List<Tourist__c> getTouristsByAge(List<Integer> ages) {
        if (ages == null && ages.isEmpty()) {
        return new List<Tourist__c>();
        }
        
        List<Tourist__c> listOfTourists = [
            SELECT Age__c,
                   Name
            FROM Tourist__c
            WHERE Age__c IN: ages
        ];
        return listOfTourists;
    }
    
    public static List<Flight__c> getTouristsByTripStartDate(Integer startDateYear) {
        if (startDateYear == null) {
        return new List<Flight__c>();
        }
        
        List<Flight__c> listOfTourists = [
            SELECT Tourist__r.Name,
                   Tourist__r.Age__c,
                   Trip__r.Start_Date__c,
                   Trip__r.Name
            FROM Flight__c
            WHERE CALENDAR_YEAR(Trip__r.Start_Date__c) = :startDateYear
        ];
        return listOfTourists;
        
    }
    
    public static List<Flight__c> getTouristsWithTrips() {
        List<Flight__c> listOfTourists = [
            SELECT Tourist__r.Name,
                   Tourist__r.Age__c,
                   Trip__r.Start_Date__c,
                   Trip__r.Name
            FROM Flight__c
        ];
        return listOfTourists;
    }
    
    public static List<Tourist__c> getTouristsWithoutTrips() {
        List<Tourist__c> listOfTourists = [
            SELECT Name,
                   Age__c
            FROM Tourist__c
            WHERE Id NOT IN
            	 (SELECT Tourist__c
             	 FROM Flight__c)
        ];
        return listOfTourists;
    }
}