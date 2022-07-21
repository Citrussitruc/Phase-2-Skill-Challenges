# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

example 1

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

example 2

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

3

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

example 1
```ruby
reading_time = calculate_time(text)
# text is a string of words
# reading time is an interger that represents time in minutes
```

example 2
```ruby
result = test_sentence(text)
# text is a string of words
# result is a boolean that represents if the text is grammatically correct
```

3
```ruby
todo = check_todo(str)

# str is a string
# todo is a boolean where true includes #TODO
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

example 1
```ruby
calculate_time('')
# => 0
calculate_time('word')
# => 1
calculate_time('... two hundred words')
# => 1
calculate_time('... three hundred words')
# => 2
```
example 2
```ruby
test_sentence('')
# => false
test_sentence(1)
# => fail
test_sentence('@sentance.')
# # => false
test_sentence('sentence')
# => false
test_sentence('Sentence')
# => false
test_sentence('sentence.')
# => false
# test_sentence('Sentence.')
# # => true
# test_sentence('Sentence!')
# # => true
test_sentence('sentence!')
# => false
test_sentence('Sentence?')
# => true
test_sentence('Sentence?!?')
# => true
# test_sentence('Sentence?!?   ')
# => true
test_sentence('result is a boolean that represents if the text is grammatically correct')
# => false
test_sentence('Result is a boolean that represents if the text is grammatically correct.')
# => true

```

```ruby
check_todo('Hello World')
# => return false
check_todo('#TODO Hello World')
# => return true
check_todo('Hello #TODO World')
# => return true
check_todo('')
# => return false
check_todo('# TODO')
# => return true
check_todo('#ToDo')
# => return true
check_todo('#todo')
# => return true
check_todo('#to do')
# => return false
check_todo(8)
# => raise error - NoMethodError
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._