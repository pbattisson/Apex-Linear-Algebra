/**
  * @author Paul Battisson
  * @description This is the basic matrix class we will be using to help us define a matrix within our mathematical framework. This should be replaced
  * with a more mathematically efficient and robust implementation when possible.
  */
public with sharing class Matrix 
{
	public Integer rows{get; private set;}
	public Integer columns{get; private set;}

	private List<List<Double>> elements;

	public Matrix(String JSONData) {

		this((List<List<Double>>)JSON.deserialize(JSONData, List<List<Double>>.class));
	}

	public Matrix(Integer numRows, Integer numCols) {
		rows = numRows;
		columns = numCols;

		elements = new List<List<Double>>();

		for(Integer i = 0; i < numRows; i++) {
			elements.add(new Double[numCols]);
		}
	}

	public Matrix(List<List<Double>> elems) {
		if(elems != null) {
			elements = elems;
			rows = elements.size();
			columns = elements.get(0).size();
		}
	}

	public Matrix(List<Double> elems) {
		if(elems != null) {
			elements = new List<List<Double>>();
			elements.add(elems);
			rows = elements.size();
			columns = elements.get(0).size();
		}
	}

	public void setElement(Integer rowNum, Integer colNum, Double value) {
		if(rowNum < rows && colNum < columns && rowNum >= 0 && colNum >= 0) {
			elements.get(rowNum).set(colNum, value);
		}
	}

	public Double getElement(Integer rowNum, Integer colNum) {
		if(rowNum < rows && colNum < columns && rowNum >= 0 && colNum >= 0) {
			return elements.get(rowNum).get(colNum);
		}

		return null;
	}

	public void Zeros() {
		Double zero = 0.0;
		for(Integer i = 0; i < rows; i++) {
			for(Integer j = 0; j < columns; j++) {
				elements.get(i).set(j, zero);
			}
		}
	}
}