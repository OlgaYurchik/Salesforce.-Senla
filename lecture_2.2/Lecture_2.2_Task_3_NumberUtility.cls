public class NumberUtility {

	public void methodSimpleNumbers(Integer n) {
		List < Integer > simpleNumbers = new List < Integer > ();
        
		for (Integer i = 1; i <= n; i++) {
			if (Math.mod(i, 1) == 0 || Math.mod(i, i) == 0) {
				simpleNumbers.add(i);
			}
		}
		System.debug(simpleNumbers);
	}

	public void methodFibonachi(Integer n) {

		Integer fibonachiNumber = 0;
		Integer previousNumber = 0;
		List < Integer > fibonachiNum = new List < Integer > ();

		while (fibonachiNumber <= n) {
			if (fibonachiNumber != 0) {
				Integer tempVariable = fibonachiNumber;
				fibonachiNumber = fibonachiNumber + previousNumber;
				previousNumber = tempVariable;
			} else {
				fibonachiNumber = fibonachiNumber + 1;
			}
			fibonachiNum.add(fibonachiNumber);
		}
		System.debug(fibonachiNum);
	}
    
	public boolean methodPalindrome() {

		Integer numToCheck = 910019;
		Integer palindrome = numToCheck;
		Integer reverse = 0;

		while (palindrome != 0) {
			Integer remainder = Math.mod(palindrome, 10);
			reverse = reverse * 10 + remainder;
			palindrome = palindrome / 10;
		}
		if (numToCheck == reverse) {
			System.debug('true');
			return true;
		} else {
			System.debug('false');
			return false;
		}
	}
}