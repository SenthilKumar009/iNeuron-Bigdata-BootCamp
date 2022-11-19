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
Q45. What are sets in Python?

Sets are collections of unique object in Python. 
Sets wont have duplicate values
Sets are not ordered.
Sets wont support indexing and ordering

Q46. How can you create a set?

set_var = {1,2,3,5,5}
print(set_var)

my_list = [1,2,3,4,5,6,7,8,9,9]

my_set = set(my_list)
print(my_set)


Q47. Create a set and add "iNeuron" in your set.

my_set = set({})
my_set.add("iNeuron")
print(my_set)


Q48. Try to add multiple values using add() function.

```
    my_set.update([1,2])
    print(my_set)
```

Q49. How is update() different from add()?

add() - helps to add a single item to the set. it will add anywhere in the set.
update() - helps to add multiple items to the set. it will add the sequential order.
           list, tuple, sets can be added to the set using update()

Q50. What is clear() in sets?

clear() - to clear the elements from the set variable. it makes sets empty but not delete

Q51. What is frozen set?
Q52. How is frozen set different from set?

Frozenset is similar to set in Python, except that frozensets are immutable, which implies that once generated, 
elements from the frozenset cannot be added or removed. This function accepts any iterable object as input and transforms it into an immutable object.

Q53. What is union() in sets? Explain via code.

union() in Sets combine the two or more different sets() and eliminate the duplicate.
```
    set1 = {1,2,3,4,5}
    set2 = {3,4,5,6,7}
    new_set = set1.union(set2)
    print(new_set)
```

Q54. What is intersection() in sets? Explain via code.

intersection() - to return the common elements between the two sets.

```
    new_set = set1.intersection(set2)
    print(new_set)
```
 
Q55. What is dictionary ibn Python?

dictionary used to store key values pair object in the variable.
Dictionary is ordered, changeable
Dictionary does not allow duplicates 
 
Q56. How is dictionary different from all other data structures.
 
Q57. How can we declare a dictionary in Python?

Unlike the other DataTypes, which are capable of holding only a single value in the form of an element, a Dictionary is capable of holding the key:value pair. In a Dictionary, a colon separates all the key-value pairs from each other, while a comma separates all the keys from each other.

Q58. What will the output of the following?
```
    var = {}
    print(type(var))

    returns - <class 'dict'>
```

Q60. Create a dictionary and access all the values in that dictionary.

```
    myDict = {'Name': 'Senthil Kumar Kanagaraj',
              'Age': '24',
              'Gender': 'Male',
              'City': 'Texas',
              'Country': 'USA',
              'Occupation': 'Data Engineer',
              'Company': 'Tesla'
            }
    for i in myDict:
        print(i +":" + myDict[i])
```
Q61. Create a nested dictionary and access all the element in the inner dictionary.

```
myData = {
    'Name': 'Senthil Kumar Kanagaraj',
    'Languages' : {'good': 'python', 'better':'sql'},
    'age': 31
}

print(myData['Languages']['good'])

```

Q62. What is the use of get() function?

get() method in python is help to get the value of the key which passed inside get()
```
    print(myData.get('Name'))
```

Q63. What is the use of items() function?

items() to read both key and value from the dictionary
```
    print(myData.items())
```

Q64. What is the use of pop() function?

pop() used to remove the specified item in pop() from the dictionary.
```
    print(myData)
    myData.pop("age")
    print(myData)
```

Q65. What is the use of popitem() function?

popitem() remove the last item from the dictionary.
```
    print(myData.popitem())
```

Q66. What is the use of keys() function?
To list out all the keys from the dictionary we can use keys()
```
    print(myDict.keys())
```

Q67. What is the use of values() function?
To list out the values from the dictionary we can use values() 
```
    print(myDict.values())
```
Q68. What are loops in Python?

Loops in python to iterate the collection of object which are stored a variable.

Q69. How many type of loop are there in Python?

Two types of loops in Python.
For
While

Q70. What is the difference between for and while loops?

for loop iterate over the range of elements and perform the operations
While loop perform some action if the condition flag is true

Q71. What is the use of continue statement?

The continue keyword is used to end the current iteration in a for loop (or a while loop), and continues to the next iteration

Q72. What is the use of break statement?

Python break is used to terminate the execution of the loop.

Q73. What is the use of pass statement?

Pass statement does not do anything, it just consider that the current step of the execution is correct.

Q74. What is the use of range() function?

range() function is to generate the sequence of number between the start and end number given excluding the end number.
by default it takes from  0 if we given only one number in it.

Q75. How can you loop over a dictionary?
 1. using key
 2. using .items()
 3. using .keys()
 4. using .values()

Q76. Write a Python program to find the factorial of a given number.

```
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

print("Enter the Number:")
number = int(input())
print(factorial(number))
```

Q77. Write a Python program to calculate the simple interest. Formula to calculate simple interest is SI = (P*R*T)/100

```
def SI(P,R,T):
    return (P * R * T) / 100

print("Enter the principal:")
P = int(input())
print("Enter the rate of interest:")
R = float(input())
print("Enter the terms(in year):")
T = int(input())

print(SI(P,R,T))
```

Q78. Write a Python program to calculate the compound interest. Formula of compound interest is A = P(1+ R/100)^t.

```
def A(P,R,t):
    return P * (R/100)**t

print(A(P,R,T))
```

Q79. Write a Python program to check if a number is prime or not.
```
def isPrime(n):
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    
    for i in range(2,int(n**0.5)+1,2):
        if n % i == 0:
            return False
        else:
            return True

    return True

number = int(input())
print(isPrime(number))
```

Q80. Write a Python program to check Armstrong Number.
```
def isArmstrong(n):

    sum = 0

    if n == 0:
        return True
    else:
        while n > 0:
            rem = n // 2
            sum += pow(rem, 3)
            n = n % 2
    
    return sum


number = int(input())
if number == isArmstrong:
    print(f'The Number {number} is Armstrong Number')
else:
    print(f'The Number {number} is not Armstrong Number')
```
Q81. Write a Python program to find the n-th Fibonacci Number.

```
# Function for nth Fibonacci number
def Fibonacci(n):
   
   # print incorrect input
    if n < 0:
        print("Incorrect input")

   # Check if n is 0
   # then it will return 0
    elif n == 0:
        return 0

   # Check if n is 1,2
   # it will return 1
    elif n == 1 or n == 2:
        return 1

    else:
        return Fibonacci(n-1) + Fibonacci(n-2)
 
# Driver Program
print(Fibonacci(9))
```

Q82. Write a Python program to interchange the first and last element in a list.
```
my_list = [1, 2, 3, 4, 5]

print(my_list)

temp = my_list[len(my_list)-1]
my_list[len(my_list)-1] = my_list[0]
my_list[0] = temp

 print(my_list)
```

Q83. Write a Python program to swap two elements in a list.
```
my_list = [1, 2, 3, 4, 5]

pos1, pos2 = input().split()
print(my_list)
temp = my_list[int(pos1)-1]
my_list[int(pos1)-1] = my_list[int(pos2)-1]
my_list[int(pos2)-1] = temp

print(my_list)
```
Q84. Write a Python program to find N largest element from a list.
```
my_list = [1, 2, 3, 4, 5]

my_list.sort(reverse=True)
print(my_list)

print("Enter the nth Big number to find")
nth = int(input())
print(my_list[nth-1])
```
Q85. Write a Python program to find cumulative sum of a list.
```
my_list = [1, 2, 3, 4, 5]
sum = 0

for i in my_list:
    sum = sum + i

print(sum)
```
Q86. Write a Python program to check if a string is palindrome or not.
```
def isPalindrome(s):
    if s == s[::-1]:
        return True
    else:
        return False

poly = input()
print(isPalindrome(poly))
```

Q87. Write a Python program to remove i'th element from a string.
```
myStr = 'Big data Ccourse'

new_str = myStr.replace('c', '')
print(new_str)
```

Q88. Write a Python program to check if a substring is present in a given string.
```
my_sentence = "Senthil is a Big Data Engineer"

my_list = my_sentence.split(' ')
print(my_list)

find = input()
print(find)

if find in my_list:    
    print(f'{find} is present in the sentence')
else:
    print(f'{find} is not present in the sentence')
```

Q89. Write a Python program to find words which are greater than given length k.
```
my_sentence = "Senthil is a Big Data Engineer"

word_len = int(input())
my_list = my_sentence.split(' ')
count = 0

for word in my_list:
    if len(word) > word_len:
        count+=1

print(count)
```

Q90. Write a Python program to extract unique dictionary values.
```
dict1 = {'A' : [1, 3, 5, 4],
         'B' : [4, 6, 8, 10],
         'C' : [6, 12, 4 ,8],
         'D' : [5, 7, 2]}
print("The original dictionary is : " ,dict1)
  
# Using list comprehension, values() and sorted()
res = list(sorted({ele for val in dict1.values() for ele in val}))
  
# print result 
print("The unique values list is : " , res) 
```
Q91. Write a Python program to merge two dictionary.
```
def Merge(dict1, dict2):
    return(dict2.update(dict1))
 
 
# Driver code
dict1 = {'a': 10, 'b': 8}
dict2 = {'d': 6, 'c': 4}
 
# This returns None
print(Merge(dict1, dict2))
 
# changes made in dict2
print(dict2)
```

Q92. Write a Python program to convert a list of tuples into dictionary.
```
 Input : [('Sachin', 10), ('MSD', 7), ('Kohli', 18), ('Rohit', 45)]
 Output : {'Sachin': 10, 'MSD': 7, 'Kohli': 18, 'Rohit': 45}

def Convert(tup, di):
    di = dict(tup)
    return di
      
tups = [('Sachin', 10), ('MSD', 7), ('Kohli', 18), ('Rohit', 45)]
dictionary = {}
print (Convert(tups, dictionary))
```
 
 Q93. Write a Python program to create a list of tuples from given list having number and its cube in each tuple.
```
 Input: list = [9, 5, 6]
 Output: [(9, 729), (5, 125), (6, 216)]

lst = [9, 5, 6]

result_list = [(val, pow(val, 3)) for val in lst]
print(result_list)

```

Q94. Write a Python program to get all combinations of 2 tuples.
```
# Input : test_tuple1 = (7, 2), test_tuple2 = (7, 8)
# Output : [(7, 7), (7, 8), (2, 7), (2, 8), (7, 7), (7, 2), (8, 7), (8, 2)]
# ```

test_tuple1 = (7, 2)
test_tuple2 = (7, 8)

result_list = [(tup1, tup2) for tup1 in test_tuple1 for tup2 in test_tuple2]

result_list = result_list + [(tup1, tup2) for tup1 in test_tuple2 for tup2 in test_tuple1]

print(result_list)

```

Q95. Write a Python program to sort a list of tuples by second item.
```
# Input : [('for', 24), ('Geeks', 8), ('Geeks', 30)] 
# Output : [('Geeks', 8), ('for', 24), ('Geeks', 30)]
# ```
tuple = [('for', 24), ('Geeks', 8), ('Geeks', 30)]
print("Original Tuple List :" ,tuple)

def Sort(tuple): 
    # Sorts in Ascending order 
    tuple.sort(key = lambda a: a[1]) 
    return tuple 

print("Sorted Tuple List:" ,Sort(tuple))
```

Q96. Write a python program to print below pattern.
```
# * 
# * * 
# * * * 
# * * * * 
# * * * * * 
# ```

n = int(input())
for i in range(n):
    print('*' * i)
```

Q97. Write a python program to print below pattern.
```
#     *
#    **
#   ***
#  ****
# *****
# ```

n = int(input())
for i in range(n+1):
    print(' '*(n-i) + '*'* (i+1))

```

Q98. Write a python program to print below pattern.
```
#     * 
#    * * 
#   * * * 
#  * * * * 
# * * * * * 

n = int(input())

for i in range(n+1):
    print(' '*(n-i) + '* '* (i+1))
```

Q99. Write a python program to print below pattern.
```
# 1 
# 1 2 
# 1 2 3 
# 1 2 3 4 
# 1 2 3 4 5
# ```
n = int(input())
for i in range(1,n):
    for j in range(1,i+1):
        print(j, end=' ')
    print('\n')
```

Q100. Write a python program to print below pattern.
```
# A 
# B B 
# C C C 
# D D D D 
# E E E E E 
# ```
val = 65

n = int(input())
for i in range(n):
    for j in range(i+1):
        print(chr(val), end=' ')
    val+=1
    print('\n')
```
