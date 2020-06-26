"""2520 is the smallest number that can be divided by
each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly
divisible by all of the numbers from 1 to 20?
"""
if __name__ == "__main__":

    testNum = 20
    counter = testNum
    while testNum != 0:
        if counter % testNum == 0:
            testNum = testNum - 1
        else:
            counter = counter + 1
            testNum = 20
    print(counter)
