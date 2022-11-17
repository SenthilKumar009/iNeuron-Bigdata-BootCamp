## Assignment Part-1
Q1. Why do we call Python as a general purpose and high-level programming language?

Because they are not written in machine-readable language, Python programs need to be processed before machines can run them. 
Python is an interpreted language. This means that every time a program is run, its interpreter runs through the code and translates it into machine-readable byte code.

Q2. Why is Python called a dynamically typed language?

Python is both a strongly typed and a dynamically typed language. Strong typing means that variables do have a type and that the type matters when performing operations on a variable. Dynamic typing means that the type of the variable is determined only during runtime.
Dynamically-typed languages are those (like Python, JavaScript) where the interpreter assigns variables a type at runtime based on the variable's value at the time.

Q3. List some pros and cons of Python programming language?
Pros:
1. Its Simple, easy to use.
2. Its Free
3. Object Oriented
4. Contains lot of libraries supports ML, DL, etc
5. Widely applicable 

Cons:
1. Runtime error
2. Poor memory management.
3. Slow
4. Not complete support for mobile app development

Q4. In what all domains can we use Python?

Data Science, Machine Learning, Deep Learning, AI, Data Engineering
Web Application
Game Development

Q5. What are variable and how can we declare them?

Variables are a storage object which holds the data which can be used in the program

a = 10

Q6. How can we take an input from the user in Python?

Using input() function user can read the input in runtime.

Q7. What is the default datatype of the value that has been taken as an input using input() function?

Default datatype of input() is string.

Q8. What is type casting?

type casting is converting a variable from one datatype to another datatype.

Q9. Can we take more than one input from the user using single input() function? If yes, how? If no, why?

We can get multiple input with delimeter and use split() function to use to store in different variables.

x,y = input().split()

Q10. What are keywords?

Keywords are system defined objects which cant be use by the user as variable name and function name.

Q11. Can we use keywords as a variable? Support your answer with reason.

No we cant. Keywords are system defined objects which cant be use by the user as variable name and function name.

Q12. What is indentation? What's the use of indentation in Python?

Indentation refers to the spaces at the beginning of a code line. Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important. Python uses indentation to indicate a block of code.

Q13. How can we throw some output in Python?
Using print() statement.

Q14. What are operators in Python?
Operators are special charectors which do one specific operation on the given variables.

Q15. What is difference between / and // operators?

// - Command the code which exclude from python interpretter.

/ - division operator returns decimal output.

Q16. Write a code that gives following as an output.
```
iNeuroniNeuroniNeuroniNeuron

print(4 * 'iNeuron')

```

Q17. Write a code to take a number as an input from the user and check if the number is odd or even.

```
number = int(input())

if number % 2 == 0:
	print("even")
else:
	print("odd")
```

Q18. What are boolean operator?

The logical operators and, or and not are also referred to as boolean operators. While and as well as or operator needs two operands, which may evaluate to true or false, not operator needs one operand evaluating to true or false. Boolean and operator returns true if both operands return true

Q19. What will the output of the following?

```
1 or 0 --> 1

0 and 0 --> 0

True and False and True --> False

1 or 0 or 0 --> 1
```

Q20. What are conditional statements in Python?

Conditional statements in python are If and nested statements which used to check the multiple condition on a sequence manner and return the output.

Q21. What is use of 'if', 'elif' and 'else' keywords?

if --> to check the first statement is true or false
elif --> to check after first statement whether the condision(s) is true or false
else --> to return/ print a statement or value when all the if and elif is failed.

Q22. Write a code to take the age of person as an input and if age >= 18 display "I can vote". If age is < 18 display "I can't vote".

```
age = int(input())

if age >= 18:
    print("I can vote")
elif age < 18:
    print("I can't vote")
else:
    print("Invalid input")
```

Q23. Write a code that displays the sum of all the even numbers from the given list.
```
numbers = [12, 75, 150, 180, 145, 525, 50]

sum = 0

for i in numbers:
    if i % 2 == 0:
        print(i)
        sum += i

print(sum)
```

Q24. Write a code to take 3 numbers as an input from the user and display the greatest no as output.

```
a, b, c = input().split()
print(max(int(a), int(b), int(c)))
```

Q25. Write a program to display only those numbers from a list that satisfy the following conditions

- The number must be divisible by five

- If the number is greater than 150, then skip it and move to the next number

- If the number is greater than 500, then stop the loop
```
numbers = [12, 75, 150, 180, 145, 525, 50]

for i in numbers:
    if i != 150 and i <=500 and i % 5 == 0:
        print(i)
```
 
Q26. What is a string? How can we declare string in Python?

String is a data type in python to store a array a of alpha numeric elements in a variable.
a = 'string data type'
b = "python"

Q27. How can we access the string using its index?

We can access the string index by using square bracket and specifying the the position like below.

```
    python = "python:
    print(python[2]) -> returns t

```

Q28. Write a code to get the desired output of the following
```
    string = "Big Data iNeuron"
    desired_output = "iNeuron"


    value  = "Big Data iNeuron"
    print(value.split()[-1])
```

Q29. Write a code to get the desired output of the following
```
    string = "Big Data iNeuron"
    desired_output = "norueNi"

    value  = "Big Data iNeuron"
    print(value.split()[-1][::-1])
```

Q30. Reverse the string given in the above question.

```
    print(value[::-1])
    print(value.split()[::-1])
```

Q31. How can you delete entire string at once?

Using 'del' command we can delete the entire string in python. Generally it will drop the variable which holds the string value.

Q32. What is escape sequence?

Escape sequence is special key which doesn't print anything however it helps to align the output based on the user requirement.
Ex: \n - new line
    \b - backspace
    \t - tab

Q33. How can you print the below string?
```
    'iNeuron's Big Data Course'
    
    print("\'iNeuron's Big Data Course\'")
```

Q34. What is a list in Python?

List is one of the key data structure in python which hold any type of data in it.
List  is a collection which is ordered and changeable. Allows duplicate members.

Q35. How can you create a list in Python?

List can be created in python using [].
lst = [] --> empty list
lst = [1,2,3] --> numeric list
lst = ['a', 'bc', 'd'] --> string list
lst = ['abc', 'xyz', 1] --> alphanumeric list

Q36. How can we access the elements in a list?

we can access the list using index.

```
    lst = [1,2,3,4,5]
    print(lst[1])
    print(lst[1:2])
```

Q37. Write a code to access the word "iNeuron" from the given list.
```
    lst = [1,2,3,"Hi",[45,54, "iNeuron"], "Big Data"]
    print(lst[4][2])

``` 

Q38. Take a list as an input from the user and find the length of the list.
```
    print("Enter the list of numbers separated by ','")

    lst = input().split(',')    
    print(len(lst))
```

Q39. Add the word "Big" in the 3rd index of the given list.
```
    lst = ["Welcome", "to", "Data", "course"]
    lst.insert(2,'Big')
    print(lst)

```
Q40. What is a tuple? How is it different from list? 

Tuple is a collection of objects separated by commas. Same like list but tuples are immutable.
Tuple is denoted by ()
Tuple consumes less memory compare to list.
Insertion and deletion is not allowed in Tuple, allowed in List

Q41. How can you create a tuple in Python?
```
    tuple = (1,2,3,5)
    print(tuple)
```

Q42. Create a tuple and try to add your name in the tuple. Are you able to do it? Support your answer with reason.
```
    name = ()
    name[0] = 'SKK'
    print(name)

It throws an error since the tuple is immutable.
```

Q43. Can two tuple be appended. If yes, write a code for it. If not, why?

append method is not available in tuple. so we can concatenate two tuples and extend it.

```
    number1 = (1,2,3)
    number2 = (3,4,5)
    num = number1 + number2
    print(num)

```

Q44. Take a tuple as an input and print the count of elements in it.
```
    print(len(num))

```

