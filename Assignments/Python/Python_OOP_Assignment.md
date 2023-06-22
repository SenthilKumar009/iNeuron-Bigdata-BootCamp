## Python OOP Assignment
Q1. What is the purpose of Python's OOP?

* OOP is programming model to use the real world entities like abstraction, encapsulation, inheritance and polymorphism.
* Using the OOP one can create an application, where the data can't be accessed by other code. 

Q2. Where does an inheritance search look for an attribute?

-> It will follow the left to right approach
-> First it will look into the instance object then class object. at the end it will look after all the super classes

Q3. How do you distinguish between a class object and an instance object?

--> Instance object is work only for the created object.

class Exam:
    School = 'XYZ'
    def __init__(self, fname, lname, result):
        pass

Exam e1, e2 --> two different entity with different properties

--> Class object works as a common object for all the instances created from the class
School - common across all the objects.

Q4. What makes the first argument in a class’s method function special?

 @classmethod
    def set_raise_amt(cls, amount):
        cls.riase_amount = amount

cls - represent the class itself

Q5. What is the purpose of the __init__ method?

__init__() - act like a constructor and do the initialization process when the object creates.

Q6. What is the process for creating a class instance?

Super class name should be defined inside the subclass.

class Emp:
    pass
class Dec(Emp):
    pass


Q7. What is the process for creating a class?

we have to define a class with the class keyword followed by a class name

class emp:
    pass

inside the class we should define the class variables, methods etc.

Q8. How would you define the superclasses of a class?
A superclass is the class from which many subclasses can be created. The subclasses inherit the characteristics of a superclass. The superclass is also known as the parent class or base class. In the above example, Vehicle is the Superclass and its subclasses are Car, Truck and Motorcycle.

Q9. What is the relationship between classes and modules?
Modules are collections of methods and constants. They cannot generate instances. Classes may generate instances (objects), and have per-instance state (instance variables).

Q10. How do you make instances and classes?
Class is an blueprint of the object.
We define the class as below.
class Emp:
    pass

e1 = Emp()

Q11. Where and how should be class attributes created?
Class have attributes and action such as variables and methods.

Class Emp:

    amount = 10

    def __init__(self):
        pass
    
    def process(self):
        pass


Q12. Where and how are instance attributes created?

After the class definition, instances will be created to access the instance variables and methods.

e1 = Emp()

Q13. What does the term "self" in a Python class mean?
The self parameter is a reference to the current instance of the class, and is used to access variables that belongs to the class

Q14. How does a Python class handle operator overloading?

Operator overloading is noting but a predefined operators do more operations other than its defined to do.
For Ex: 

--> '+' will do integer addition and string concatination as well.
--> '*' will multiply the numbers as well as the nth time of the given string as well.

To perform operator overloading, Python provides some special function or magic function that is automatically invoked when it is associated with that particular operator.
For example, when we use + operator, the magic method __add__ is automatically invoked in which the operation for + operator is defined.

```
class A:
    def __init__(self, a):
        self.a = a
    def __gt__(self, other):
        if(self.a>other.a):
            return True
        else:
            return False
ob1 = A(2)
ob2 = A(3)
if(ob1>ob2):
    print("ob1 is greater than ob2")
else:
    print("ob2 is greater than ob1")
```

Q15. When do you consider allowing operator overloading of your classes?



Q16. What is the most popular form of operator overloading?

Q17. What are the two most important concepts to grasp in order to comprehend Python OOP code?

Q18. Describe three applications for exception processing.

Q19. What happens if you don't do something extra to treat an exception?

Q20. What are your options for recovering from an exception in your script?

Q21. Describe two methods for triggering exceptions in your script.

Q22. Identify two methods for specifying actions to be executed at termination time, regardless of whether or not an exception exists.

Q23. What is the purpose of the try statement?

Q24. What are the two most popular try statement variations?

Q25. What is the purpose of the raise statement?

Q26. What does the assert statement do, and what other statement is it like?

Q27. What is the purpose of the with/as argument, and what other statement is it like?

Q28. What are *args, **kwargs?

Q29. How can I pass optional or keyword parameters from one function to another?

Q30. What are Lambda Functions?

Q31. Explain Inheritance in Python with an example?

Q32. Suppose class C inherits from classes A and B as class C(A,B).Classes A and B both have their own versions of method func(). If we call func() from an object of class C, which version gets invoked?

Q33. Which methods/functions do we use to determine the type of instance and inheritance?

Q34.Explain the use of the 'nonlocal' keyword in Python.

Q35. What is the global keyword?
