#!/usr/bin/env python
# coding: utf-8

# In[1]:


#Task 1, Guessing game

from random import randint

# Generate the secret number
secret_number = randint(1, 50)
attempts = 5

while attempts > 0:
    try:
        # Get the user's guess
        user_guess = int(input(f"Guess the secret number (1-50): "))
        
        if user_guess == secret_number:
            print(f"Congratulations! You guessed the secret number {secret_number} correctly!")
            break
        elif user_guess < secret_number:
            attempts -= 1
            print(f"Try again! Your guess is too low. You have {attempts} attempts left.")
        else:
            attempts -= 1
            print(f"Try again! Your guess is too high. You have {attempts} attempts left.")
    except ValueError:
        print("Invalid input! Please enter a valid number.")
        continue

if attempts == 0:
    print(f"Game Over! The secret number was {secret_number}. Better luck next time!")


# In[2]:


#Write a function called num_vowels that takes in a string as an argument, and returns the number of vowels in that string. 
#Print out the result for the string “Learning Python is fun and engaging.”

def num_vowels(statement):
    
    vowels= "aeiouAEIOU"
    count= 0
    
    for char in statement:
        if char in vowels:
            count += 1
    return count

# Test the function with the given string
statement = "Learning Python is fun and engaging."
result = num_vowels(statement)
print("Number of vowels in the string:", result)
    
    


# In[25]:


#Create a function called hours_to_min that converts hours into minutes. 
#The function should take the number of hours as input and return the equivalent number of minutes.
# Test the function with 2.5 hours and print the result.

def hours_to_mins(hours):
    minutes= hours*60
    return minutes

print(hours_to_mins(2.5))


# In[ ]:


#Write a python function that takes in a number as an argument, and prints out the table of that number up to 12 times that number. You may name this whatever you wish.

def print_number_table(number):
    for i in range(1, 13):
        result = number * i
        print(f"{number} x {i} = {result}")

# Test the function with a number, for example, 5
number = 5
print_number_table(number)


# In[ ]:




