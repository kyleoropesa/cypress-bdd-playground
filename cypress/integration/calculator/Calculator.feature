Feature: Basic calculator functions

  Scenario Outline: Display single digit numbers in calculator
    Given I open calculator app
    When I press "<numpad>" in the calculator
    Then it should display "<numpad>" in the calculator screen
  Examples:
    |   numpad   |
    |   1        |
    |   2        |
    |   3        |
    |   4        |
    |   5        |
    |   6        |
    |   7        |
    |   8        |
    |   9        |
    |   0        |

  
  Scenario Outline: Display Decimal Numbers in calculator
    Given I open calculator app
    When I press "<numpad>" in the calculator
    Then it should display "<numpad>" in the calculator screen
  Examples:
    |   numpad              |
    |   1.23456789          |
    |   20.3456789          |
    |   2034.56789          |
    |   0.00000001          |


  Scenario Outline: Test Invalid Inputs in Calculator
    Given I open calculator app
    When I press "<numpad>" in the calculator
    Then it should display "<result>" in the calculator screen
  
    Examples: Double Decimal
      |   numpad              | result           |
      |   1.2345.6789         | 1.23456789       |
      |   20.345.6789         | 20.3456789       |
      |   0.0000000.1         | 0.00000001       |

    Examples: Greater than 10 digits
      |   numpad              | result           |
      |   1234567891111       | 123456789        |
      |   0.00000012222       | 0.00000012       |
      |   20000.11112         | 20000.1111       |


  Scenario Outline: Basic Arithmetic Integer Operations in the calculator
    Given I open calculator app
    When I perform the arithmetic operation "<operation>" in the calculator
    Then it should display "<result>" in the calculator screen
  
    Examples: Basic Operations Single Digit
      |   operation           | result  |
      |   1+1=                | 2       |
      |   1-1=                | 0       |
      |   1/1=                | 1       |
      |   1*1=                | 1       |

    Examples: Basic Operations Multiple Digits
      |   operation           | result  |
      |   11000+12000=        | 23000   |
      |   35000-11000=        | 24000   |
      |   20000/10000=        | 2       |
      |   450*233=            | 104850  |

    Examples: Multiple Similar Operations
      |   operation           | result  |
      |   238+456+888+90=     | 1672    |
      |   1000-343-32=        | 625     |
      |   9000/10/100=        | 9       |
      |   23*56*73*20=        | 1880480 |


  Scenario Outline: Basic Arithmetic Integer Operations in the calculator
    Given I open calculator app
    When I perform the arithmetic operation "<operation>" in the calculator
    Then it should display "<result>" in the calculator screen
  
    Examples: Basic Operations Single Digit
      |   operation           | result  |
      |   1+1=                | 2       |
      |   1-1=                | 0       |
      |   1/1=                | 1       |
      |   1*1=                | 1       |

    Examples: Basic Operations Multiple Digits
      |   operation           | result  |
      |   11000+12000=        | 23000   |
      |   35000-11000=        | 24000   |
      |   20000/10000=        | 2       |
      |   450*233=            | 104850  |

    Examples: Multiple Different Operations
      |   operation           | result  |
      |   238+456-30*90/2=    | 29880   |

    Examples: Divided by Zero
      |   operation           | result  |
      |   2323/0=             | Error   |

    Examples: Operation that yield to numbers that exceed display capacity
      |   operation           | result  |
      |   999999999+1=        | 1e+9    |
      |   999999999*2=        | 2e+9    | 

    Examples: Operation that yield to negative numbers
      |   operation           | result  |
      |   98-200              | -102    |
      |   98-200*36/34        | -108    | 
  


  Scenario Outline: Basic Arithmetic Decimal Operations in the calculator
    Given I open calculator app
    When I perform the arithmetic operation "<operation>" in the calculator
    Then it should display "<result>" in the calculator screen
  
    Examples: Basic Operations 
      |   operation           | result |
      |   1.1+1.8=            | 2.9    |
      |   0.9-0.7=            | 0.2    |
      |   1.25/2.5=           | 0.5    |
      |   1.7*1.7=            | 2.89   |

    Examples: Basic Operations Multiple Digits
      |   operation           | result     |
      |   11.81232+5.2366=    | 17.04892   |
      |   0.9876-0.11356=     | 0.874      |
      |   0.8773/0.7911=      | 1.1089622  |
      |   112.3112*0.332=     | 37.2873184 |

    Examples: Multiple Different Operations
      |   operation                            | result       |
      |   238.65+456.3523-30.884*1.103/2.1=    | 348.820231   |

    Examples: Divided by Zero
      |   operation           | result  |
      |   2323.11/0=          | Error   |

    Examples: Operation that yield to negative numbers
      |   operation           | result  |
      |   0.05-0.98           | -0.93    |
      |   0.05-0.98*0.8       | -0.744   | 

  

          

