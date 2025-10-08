// Multiplication table of 2
console.log("Multiplication Table of 2");
console.log("=========================");

for (let i = 1; i <= 10; i++) {
    const result = 2 * i;
    console.log(`2 × ${i} = ${result}`);
}

// Alternative approach using a function
function generateTableOf2(limit = 10) {
    console.log("\nUsing function approach:");
    console.log("========================");
    
    for (let i = 1; i <= limit; i++) {
        console.log(`2 × ${i} = ${2 * i}`);
    }
}

// Call the function
generateTableOf2(10);
