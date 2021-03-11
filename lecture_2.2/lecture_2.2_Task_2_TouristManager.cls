public class TouristManager {
    public void chooseTourists (String touristName){
        List <Tourist__c> listOfTourists = [
            SELECT Name, Age__c
            FROM Tourist__c
            WHERE NAME LIKE : touristName];
        
        System.debug(listOfTourists);  
    }
    public void chooseTourists1(Integer ageOfTourist){
        List<Tourist__c> listOfTourists1 =[
            SELECT Name, Age__c
            FROM Tourist__c
            WHERE Age__c = : (ageOfTourist)];
        //какой оператор использовать, чтобы можно было задать несколько значений для поиска возраста?
        System.debug(listOfTourists1);   
    }
    public void chooseTourists2 (Integer startDateYear){
        List <Flight__c> listOfTourists2 = [
            SELECT Tourist__r.Name, Tourist__r.Age__c, Trip__r.Start_Date__c, Trip__r.Name
            FROM Flight__c
            WHERE CALENDAR_YEAR (Trip__r.Start_Date__c) = : startDateYear];
        //в Query editor выводит значения, в APEX IDs. Как сделать, чтобы выводил значения в APEX?
        System.debug(listOfTourists2);
        
    }
    public  void chooseTourists3 (){
        List <Flight__c> listOfTourists3 = [
            SELECT Tourist__r.Name, Tourist__r.Age__c,
            Trip__r.Start_Date__c, Trip__r.Name 
            FROM Flight__c];
        System.debug(listOfTourists3);  
    }
    public void chooseTourist4 (){
        List <Flight__c> listOfTourists4 = [
            SELECT Tourist__r.Name, Tourist__r.Age__c
            FROM Flight__c
            WHERE Trip__r.Name = 'no trip'
        ];
        System.debug(listOfTourists4);
        //Работает только, если поле Trip необязательно для заполнения на Flight. А если обязательно как достать инфу?
    }
}