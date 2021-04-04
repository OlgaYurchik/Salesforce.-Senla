public class ExceptionsPlayground {
    public virtual class BaseException extends Exception {}
    public class CustomException extends BaseException {}
    
    public Integer firstNum;                          //объявила переменные, кот. используются во всех методах класса
    public Integer secondNum;
    public ExceptionsPlayground(Integer firstIncomingNum, Integer secondIncomingNum) {
        this.firstNum = firstIncomingNum;
        this.secondNum = secondIncomingNum;
    }
    
    public void generateCustomException() {
        try {
            if (secondNum < firstNum) throw new CustomException(' not allowed');
        } catch(BaseException e) {
            System.debug(e.getMessage());
        }
    }
    
    public void generateRegularException() {
        try {
            Integer	var;
            var = firstNum / secondNum;
            System.debug(var);
        } catch(Exception e) {
            System.debug(e.getMessage());
        }
    }
    
    public void handleExceptions() {
        try {
            if (secondNum > firstNum) throw new CustomException(' not allowed');
        } catch(BaseException e) {
            System.debug(e.getMessage());
            Integer	var;
            var = firstNum / secondNum;
        } catch(Exception e) {
            System.debug(e.getMessage());
        }
        finally {
        }
        
        System.debug('First number =  ' + firstNum + '; ' + ' second number = ' + secondNum);
    }
}