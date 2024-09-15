import 'dart:io';
//Using arrow function cause I'm familiarising myself to it
double celsiusToFahrenheit(double value) => ((value-32)*5/9);
double fahrenheitToCelsius(double value) => value*(9/5)+32; 
void main(){
    /* Create two functions in your program named celsiusToFahrenheit and 
    fahrenheitToCelsius that will convert temperatures between Celsius and Fahrenheit.
    First, ask the user to input ‘c’ for Celsius temperature and ‘f’ for Fahrenheit 
    temperature. Then, ask the user to input the value they want to convert 
    and call the needed function. Show the converted value to its counterpart 
    temperature up to two decimal places.*/
    print("Input 'c' for Celsius temperature and 'f' for Fahrenheit temperature:");
    String? input = stdin.readLineSync()!;
    double? value;
    switch(input){
        case 'c':
        case 'C':
            print('Enter value for Fahrenheit');
            value = double.parse(stdin.readLineSync()!);
            print('Converted value to Celsius: ${celsiusToFahrenheit(value).toStringAsFixed(2)} from counterpart temperature Fahrenheit ${value.toStringAsFixed(2)}');
            break;
        case 'f':
        case 'F':
            print('Enter value for Celsius');
            value = double.parse(stdin.readLineSync()!);
            print('Converted value to Fahrenheit: ${fahrenheitToCelsius(value).toStringAsFixed(2)} from counterpart temperature Celsius ${value.toStringAsFixed(2)}');
            break;
        default :
            print("You've entered either from the selection");
    }
}