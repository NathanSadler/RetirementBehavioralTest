Feature: Determining Full Retirement Age
	As a user, I want to know my full retirement age so I know when I can retire.

	Scenario: User exits the program
		Given the program asks the user for the year of their birth
		When the user presses enter without entering anything
		Then the program closes

	Scenario: User enters a low year for the month of their birth
		Given the program asks the user for the year of their birth
		When the user enters a number that is less than 1900
		Then the program tells the user they need to enter a whole number that is at least 1900
		And the program asks the user for the year of their birth again

	Scenario: User enters a high year for the month of their birth
		Given the program asks the user for the year of their birth
		When the user enters a number that is greater than the current year
		Then the program tells the user they need to enter a whole number that is less than or 			equal to the current year
		And the program asks the user for the year of their birth again

	Scenario: User enters a value that isn’t a whole number of the year of their birth
		Given the program asks the user for the year of their birth
		When the user enters a value that is not a whole number
		Then the program tells the uses they need to enter a value that is a whole number
		And the program asks the user for the year of their birth again

	Scenario: User enters a valid number for the year of their birth
		Given the program asks the user for the year of their birth
		When the user enters a number that is at least 1900
		And the value the user entered is not greater than the current year
		Then the program asks the user for the month of their birth

	Scenario: User enters a low value for the month of their birth
		Given the program asks the user for the month of their birth
		When the user enters a number that is less than 1
		Then the program tells the user they need to enter a number that is at least 1
		And the program asks the user for the month of their birth again

	Scenario: User enters a high value for the month of their birth
		Given the program asks the user for the month of their birth
		When the user enters a number that is greater than 12
		Then the program tells the user they need to enter a number that is not greater than 12
		And the program asks the user for the month of their birth again

	Scenario: User enters a value that is not a whole number for the month of their birth
		Given the program asks the user for the month of their birth
		When the user enters a value that is not a whole number
		Then the program tells the user they need to enter a value that is a whole number
		And the program asks the user for the month of their birth again

	Scenario: The user enters valid values for the year and month of their birth
		Given the program asks the user for the year of their birth
		And the user enters a number that is at least 1900
		And the value the user entered is not greater than the current year
		And the program asks the user for the month of their birth
		When the user enters a number that is at least one
		And the value the user entered is not greater than 12
		Then the program displays the user’s full retirement age
		And the program displays the date the user will reach their full retirement age
		Then the program asks the user to enter the year of their birth
