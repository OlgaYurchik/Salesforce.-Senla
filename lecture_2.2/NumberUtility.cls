public class NumberUtility {

    public static List<Integer> methodPrimeNumbers(Integer incomingNum) {
        if (incomingNum == null){
            return new List <Integer>();
        }
        List<Integer> primeNumbers = new List<Integer>();
        for (Integer i = 1; i <= incomingNum; i++) {
            if (Math.mod(i, 1) == 0 || Math.mod(i, i) == 0) {
                primeNumbers.add(i);
            }
        }
        return primeNumbers;
    }

    public static List<Integer> methodFibonachi(Integer incomingNum) {
        Integer fibonachiNumber = 0;
        Integer previousNumber = 0;
        List<Integer> fibonachiNum = new List<Integer>();

        while (fibonachiNumber <= incomingNum) {
            if (fibonachiNumber != 0) {
                Integer tempVariable = fibonachiNumber;
                fibonachiNumber = fibonachiNumber + previousNumber;
                previousNumber = tempVariable;
            } else {
                fibonachiNumber = fibonachiNumber + 1;
            }
            fibonachiNum.add(fibonachiNumber);
        }
        return fibonachiNum;
    }
    
    public Boolean isPalindrome(Integer numToCheck) {
        if (numToCheck == null){
            return false;
        }
        String text = numToCheck.format();
            
        return (text == text.reverse());
        }
}