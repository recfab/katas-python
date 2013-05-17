Feature: Addition

  Scenario: Empty string
    Given the input of empty string
     then the sum should be 0
    
  Scenario Outline: One number
    Given the input of "<number>"
     then the sum should be <number>
     
   Examples:
    | number |
    | 0      |
    | 1      |
    | 2      |

  Scenario Outline: Two numbers
    Given the input of "<first>,<second>"
     then the sum should be <sum>

   Examples:
    | first | second | sum |
    | 0     | 0      | 0   |
    | 1     | 1      | 2   |
    | 1     | 2      | 3   |

  Scenario Outline: Unknown Amount of Numbers
    Given the input of "<input>"
     then the sum should be <sum>
     
   Examples:
    | input       | sum |
    | 1,1,1       | 3   |
    | 1,2,3       | 6   |
    | 0,0,0,0     | 0   |
    | 0,1,2,5,1,3 | 12  |
