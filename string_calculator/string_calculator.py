import re

def add(input):

    if (input == ''):
        return 0

    delims = (',', '\n')
    pat = "|".join(delims)
    
    nums = [int(n) for n in re.split(pat, input)]
    
    return sum(nums)
