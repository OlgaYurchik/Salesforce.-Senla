public class ExceptionHw   {
    public virtual class BaseException extends Exception{}
    public class CustomException extends BaseException{}
    
    public Integer n;
    public Integer i;
    public ExceptionHw (Integer myNumber, Integer myNumber1){
    	this.n  = myNumber;
        this.i  = myNumber1;
    }
        
        
            
          
    public void method1() {
        //Integer i = 0; 
        try{                      
            if (i < n) throw new CustomException (' not allowed');
            System.debug (n);            
            
        }catch (BaseException e){
            System.debug(e.getMessage());
        }
        
    }
    public void method2() {
         //Integer i = 0;
        try{           
            Integer var;
            var = n/i;
            
         System.debug(var);
        }catch (Exception e){
            System.debug(e.getMessage());
        }
        
    }
    public void method3() {
        //Integer i = 0;
              
        try{          
            if (i > n) throw new CustomException (' not allowed');
            //System.debug(i + n);            
            
        }catch (BaseException e){
            System.debug(e.getMessage());
            Integer var;
            var = n/i;
        }catch (Exception e){
            System.debug(e.getMessage());
        }
        finally{
            
        }
System.debug('i = ' + i + ' ; ' + ' n =  ' + n);        
    }
}