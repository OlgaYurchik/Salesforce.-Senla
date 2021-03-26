public class ExceptionsPlayground {
	public virtual class BaseException extends Exception {}
	public class CustomException extends BaseException {}

	public Integer n;
	public Integer i;
	public ExceptionsPlayground(Integer firstIncomingNum, Integer secondIncomingNum) {
		this.n = firstIncomingNum;
		this.i = secondIncomingNum;
	}

	public void generateCustomException() {
		try {
			if (i < n) throw new CustomException(' not allowed');
			
		} catch(BaseException e) {
			System.debug(e.getMessage());
		}
	}

	public void generateRegularException() {
		try {
			Integer
			var;
			var = n / i;
			System.debug(var);
		} catch(Exception e) {
			System.debug(e.getMessage());
		}
	}

	public void handleExceptions() {
		try {
			if (i > n) throw new CustomException(' not allowed');

		} catch(BaseException e) {
			System.debug(e.getMessage());
			Integer
			var;
			var = n / i;
		} catch(Exception e) {
			System.debug(e.getMessage());
		}
		finally {

        }
		System.debug('i = ' + i + '; ' + ' n =  ' + n);
	}
}