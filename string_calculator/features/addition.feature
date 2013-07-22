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

  Scenario Outline: Allow newlines as delimiters
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input   | sum |
    | 1\n2,3  | 6   |
    | 1\n2\n5 | 8   |

  Scenario Outline: Specify delimiter in input
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input        | sum |
    | //;\n1;2     | 3   |
    | //x\n3x4x14  | 21  |

  Scenario Outline: Disallow negative numbers
    Given the input of "<input>"
     then an error shall be raised with a message containing "<negatives>"
    
   Examples:
    | input            | negatives |
    | -1               | -1        |
    | 1,2,3,-1,4       | -1        |
    | 1,-2,3,-3,5,-6,1 | -2,-3,-6  |

  Scenario Outline: Ignore numbers larger than 1000
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input  | sum  |
    | 2,1000 | 1002 |
    | 2,1001 | 2    |

  Scenario Outline: Multi-character delimiters
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input              | sum  |
    | //[***]\n1***2***3 | 6    |
    | //[%%]\n1%%2%%4%%8 | 15   |

  Scenario Outline: Multiple delimiters
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input              | sum  |
    | //[*][%]\n1*2%3    | 6    |
    | //[%][x]\n1x2%4x8  | 15   |

  Scenario Outline: Multiple multi-character delimiters
    Given the input of "<input>"
     then the sum should be <sum>

   Examples:
    | input                        | sum  |
    | //[***][%%]\n1***2%%3        | 6    |
    | //[:::][xyz]\n1xyz2:::4xyz8  | 15   |
    
