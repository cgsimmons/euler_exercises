"""A palindromic number reads the same both ways.  The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""
if __name__ == "__main__":

    p1 = 999
    p2 = 999
    pStr = ""
    result = 0

    for p1 in range(999, 100, -1):
        for p2 in range(999, 100, -1):
            pStr = str(p1 * p2)
            if (pStr == pStr[::-1]) and (result < p1 * p2):
                result = p1 * p2
    print(result)
