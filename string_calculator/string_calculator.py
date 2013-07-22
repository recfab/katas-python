import re

def add(input):

    if (input == ''):
        return 0

    (delim_part, nums_part) = ("//,", input)
    if (input.startswith("//")):
        (delim_part, _, nums_part) = input.partition("\n")

    delims = []
    if len(delim_part) == len("//,"):
        #remove '//'
        delim_part = delim_part[2:]
        delims.append(delim_part)
    else:
        delim_part = delim_part[2:]
        # chop off first '[' and last ']' so that we can use split
        delim_part = delim_part[1:-1]
        delims.extend(delim_part.split(']['))

    delims.append('\n')
    for d in delims:
        nums_part = nums_part.replace(d, ',')

    nums = [n for n in [int(ns) for ns in nums_part.split(',')] if n <= 1000]
    
    negs = [n for n in nums if n < 0]
    if len(negs) > 0:
        raise ValueError("Negatives not allowed: " + str(negs))

    return sum(nums)
