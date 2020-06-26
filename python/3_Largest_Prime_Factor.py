"""The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

if __name__ == "__main__":

    divisor = 2
    testInt = 600851475143
    while divisor < testInt:
        if testInt % divisor == 0:
            testInt = testInt // divisor
        divisor = divisor + 1

    print(testInt)
