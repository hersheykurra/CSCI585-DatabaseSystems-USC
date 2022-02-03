Name:Harshitha Kurra
HW4

Q1: 

Linear Regression Model

class =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411


Explanation: 
There are 12 terms in total in the above equation, including first 11 attributes with their coefficient values and the last number as the intercept. 

-- Every attribute in the equation is significant to MEDV. Each coefficient value signifies how much the mean of MEDV changes given a one-unit shift in the independent variable while holding other variables in the model constant. If an attribute has higher absolute value then that means An attribute has more weight on MEDV. 

-- The sign of a regression coefficient tells whether there is a positive or negative correlation between each attribute and MEDV. 
	- A positive coefficient indicates that as the value of the attribute increases, the mean of MEDV also tends to increase. 
	- A negative coefficient indicates that as the value of the attribute increases, the mean of MEDV tends to decrease.

-- Two attributes INDUS and AGE are not selected by the model because they are not significant to predict the value of MEDV. In other words, they have relatively small coefficients and do not contribute much in predicting MEDV. 

-- The attribute selection method works in this way: at the beginning, it includes all attributes in the model, and then remove ones with the smallest coefficients until average prediction error will not be further improved. 

Summing it up, The above model only includes significant attributes with their coefficients.





Q2: 

Linear Regression Equation:

num_rings =
	sex=I          * -0.8249  +
	sex=M          * 0.0577 +
	length         * -0.4583 +
	diameter       * 11.0751  +
	height         * 10.7615  + 
	whole_weight   * 8.9754   +
	shucked_weight * -19.7869    +
	viscera_weight * -10.5818   +
	shell_weight   * 8.7418     +
	3.8946






Q3: 

Linear Regression Equation:

num_rings =
	- 11.933 * length
	+ 25.766 * diameter
	+ 20.358 * height
	+ 2.836





Q4:
 
> areaPolygon(pol)
[1] 267049.4

> perimeter(pol)
[1] 2076.793

> c           lon      lat[1,] -118.2864 34.02085
> c[1][1][1] -118.2864
> c[2][1][1] 34.02085