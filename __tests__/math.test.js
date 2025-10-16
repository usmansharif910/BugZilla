const { multiply, sum } = require("../utils/math");

describe("math utils", () => {
  test("multiply works", () => {
    expect(multiply(10, 3)).toBe(30);
    expect(multiply(0, 5)).toBe(0);
  });

  test("sum works", () => {
    expect(sum(2, 3)).toBe(5);
    expect(sum(-2, 2)).toBe(0);
  });
});

