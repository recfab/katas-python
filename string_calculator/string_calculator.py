import re

def add(input):

    if (input == ''):
        return 0

    (delim_part, nums_part) = ("//,", input)
    if (input.startswith("//")):
        (delim_part, _, nums_part) = input.partition("\n")

    delims = (delim_part[2:], '\n')

    pat = "|".join(delims)

    nums = [int(n) for n in re.split(pat, nums_part)]

    return sum(nums)
