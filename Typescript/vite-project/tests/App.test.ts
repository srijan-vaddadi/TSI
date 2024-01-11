import { sum } from '../src/App';

describe('sum function', () => {
  it('should add two numbers correctly', () => {
    // Arrange
    const number1 = 5;
    const number2 = 10;

    // Act
    const result = sum(number1, number2);

    // Assert
    expect(result).toBe(15);
  });