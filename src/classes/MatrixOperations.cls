public class MatrixOperations {

	public static Matrix multiply(Matrix A, Matrix B) {

		if(A.columns != B.rows) {
			return null;
		}

		Matrix C = new Matrix(A.rows, B.columns);
		C.zeros();

		for(Integer i = 0; i < A.rows; i++) {
			for(Integer j = 0; j < B.columns; j++) {
				for(Integer k = 0; k < A.columns; k ++) {

					C.setElement(i, j, C.getElement(i, j) + A.getElement(i, k)*B.getElement(k, j));
				}
			}
		}

		return C;
	}

	public static Matrix transpose(Matrix A) {
		Matrix B = new Matrix(A.columns, A.rows);
		for(Integer i = 0; i < A.rows; i++) {
			for(Integer j = 0; j < A.columns; j++) {
				B.setElement(j, i, A.getElement(i, j));
			}
		}

		return B;
	}

	public static Matrix add(Matrix A, Matrix B) {

		if((A.rows != B.rows) && (A.columns != B.columns)) {
			return null;
		}

		Matrix C = new Matrix(A.rows, A.columns);

		for(Integer i = 0; i < A.rows; i++) {
			for(Integer j = 0; j < A.columns; j ++) {
				C.setElement(i, j, A.getElement(i,j) + B.getElement(i, j));
			}
		}

		return C;
	}

	public static Matrix subtract(Matrix A, Matrix B) {

		if((A.rows != B.rows) && (A.columns != B.columns)) {
			return null;
		}

		Matrix C = new Matrix(A.rows, A.columns);

		for(Integer i = 0; i < A.rows; i++) {
			for(Integer j = 0; j < A.columns; j ++) {
				C.setElement(i, j, A.getElement(i,j) - B.getElement(i, j));
			}
		}

		return C;
	}

	public static Matrix pointwiseMultiply(Matrix A, Matrix B) {

		if((A.rows != B.rows) && (A.columns != B.columns)) {
			return null;
		}


		Matrix C = new Matrix(A.rows, A.columns);

		for(Integer i = 0; i < A.rows; i++) {
			for(Integer j = 0; j < A.columns; j ++) {
				C.setElement(i, j, A.getElement(i,j) * B.getElement(i, j));
			}
		}

		return C;
	}
}