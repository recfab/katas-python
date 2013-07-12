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