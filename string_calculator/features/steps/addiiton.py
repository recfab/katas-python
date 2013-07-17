import string_calculator
from behave import *

@given(u'the input of empty string')
def step(context):
    context.input = ""
    
@given(u'the input of "{input}"')
def step(context, input):
    # convert text that looks like escape sequences in the .feature file into actual escape sequences
    # only handle the sequences that the system under test actually expects
    
    prepd = input.replace('\\n', '\n')
    
    context.input = prepd

@then(u'the sum should be {sum}')
def step(context, sum):
    expected_sum = int(sum)
    actual_sum = string_calculator.add(context.input)
    assert actual_sum == expected_sum, 'expected {exp}, got {act}'.format(exp=expected_sum, act=actual_sum)

@then(u'an error shall be raised with a message containing "{negatives}"')
def step(context, negatives):
    negs = map(int,negatives.split(","))
    try:
        string_calculator.add(context.input)
        assert False, 'the previous line should have thrown an error'
    except ValueError as e:
        unfound = [n for n in negs if str(n) not in e.message]
        assert len(unfound) == 0, 'expected negative values {negs} to appear in message "{msg}"'.format(negs=unfound, msg=e.message)