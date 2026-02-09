// Multiplication tables of 10, 20, and 30
console.log("Multiplication Tables of 10, 20, and 30");
console.log("=======================================");

function printTableOf(number, limit = 10) {
    console.log(`\nTable of ${number}`);
    console.log("-----------------");
    for (let i = 1; i <= limit; i++) {
        console.log(`${number} × ${i} = ${number * i}`);
    }
}

printTableOf(10);
printTableOf(20);
printTableOf(30);
console.log("\nFinished generating multiplication tables.");
