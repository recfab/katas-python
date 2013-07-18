import re

def add(input):

    if (input == ''):
        return 0

    (delim_part, nums_part) = ("//,", input)
    if (input.startswith("//")):
        (delim_part, _, nums_part) = input.partition("\n")

    delims = (delim_part[2:], '\n')

    pat = "|".join(delims)

    nums = [n for n in [int(ns) for ns in re.split(pat, nums_part)] if n <= 1000]
    
    negs = [n for n in nums if n < 0]
    if len(negs) > 0:
        raise ValueError("Negatives not allowed: " + str(negs))

    return sum(nums)
