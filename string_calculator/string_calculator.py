
def add(numbers):
    if (numbers == ''):
        return 0
    
    nums = [int(n) for n in numbers.split(',')]
    
    return sum(nums)    
