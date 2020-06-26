/*A palindromic number reads the same both ways.  The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*/

const exercise = () => {
    let pStr = "";
    let result = 0;

    for (let p1 = 999; p1 > 100; p1 -= 1) {
        for (let p2 = 999; p2 > 100; p2 -= 1) {
            pValue = p1 * p2;
            pStr = String(pValue);
            if (pStr === pStr.split("").reverse().join("") && result < pValue) {
                result = pValue;
            }
        }
    }

    console.log(result);
};

exercise();
