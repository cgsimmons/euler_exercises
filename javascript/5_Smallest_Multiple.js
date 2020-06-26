/*2520 is the smallest number that can be divided by
each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly
divisible by all of the numbers from 1 to 20?
*/

const exercise = () => {
    let testNum = 20;
    let counter = testNum;
    while (testNum !== 0) {
        if (counter % testNum === 0) {
            testNum -= 1;
        } else {
            counter += 1;
            testNum = 20;
        }
    }
    console.log(counter);
};

exercise();
