for number in range(1,101):
    string = ""
    if number % 3 == 0:
        string = string + "Fizz"
    if number % 5 == 0: 
        string = string + "Buzz"
    elif number % 3 == 0 and number % 5 == 0: 
        string = string + "FizzBuzz"
    if number % 3 != 0 and number % 5 != 0:
        string = string + str(number)  
    print(string)