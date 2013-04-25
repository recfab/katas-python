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
