@isTest
private class MatrixTest {
	
	private static String JSONString = '[[1,2,3,4],[5,6,7,8],[9,10,11,12]]'; 

	@isTest 
	static void testInstantiateNewMatrix() {
		Matrix A = new Matrix(2, 2);
		System.assertEquals(2, A.rows);
		System.assertEquals(2, A.columns);
	}
	
	@isTest 
	static void testSetAndRetrieveValue() {
		Matrix A = new Matrix(2, 2);
		Double d = 12.34;
		A.setElement(0, 1, d);
		System.assertEquals(d, A.getElement(0, 1));
	}

	@isTest
	static void testInstantiateWithJSON() {
		Matrix A = new Matrix(JSONString);
		System.assertEquals(3, A.rows);
		System.assertEquals(4, A.columns);
	}

	@isTest
	static void testVector() {
		List<Double> vect = new List<Double>{1.0, 2.0, 3.0};

		Matrix v = new Matrix(vect);
		System.assertEquals(1, v.rows);
		System.assertEquals(3, v.columns);	
	}

	@isTest
	static void testZeros() {
		Matrix A = new Matrix(2, 2);
		A.Zeros();

		for(Integer i = 0; i < 2; i++) {
			for(Integer j = 0; j<2; j++) {
				System.assertEquals(0, A.getElement(i, j));
			}
		}
	}
	
}