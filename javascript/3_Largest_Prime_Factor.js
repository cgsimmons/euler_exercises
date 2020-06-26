/* The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

const exercise = () => {
    let divisor = 2;
    let testInt = 600851475143;
    while (divisor < testInt) {
        if (testInt % divisor === 0) {
            testInt = testInt / divisor;
        }
        divisor += 1;
    }
    console.log(testInt);
};

exercise();
