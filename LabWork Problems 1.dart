
import 'dart:io';
void main(){
    /* Create a Dart console program that will accept 2 double values 
    and display the sum, difference, product, and quotient 
    of the two numbers with 2 decimal numbers. */
    /*
    print("Problem no.1");
    print("Enter two doubles:");
    double input1 = double.parse(stdin.readLineSync()!);
    double input2 = double.parse(stdin.readLineSync()!);

    print('Sum: ${(input1 + input2).toStringAsFixed(2)}');
    print('Difference: ${(input1 - input2).toStringAsFixed(2)}');
    print('Product: ${(input1 * input2).toStringAsFixed(2)}');
    print('Quotient: ${(input1 / input2).toStringAsFixed(2)}');
    */
    /* Create a Dart console program that will accept the user's name and display the name 
    with stripped spaces, with the first and last letters in uppercase and letters 
    in between in lowercase. */
    
    print('Enter your name:');
    String? name = stdin.readLineSync();
    //Nullable to NonNullable to use it freely
    String name1 = name!;
    int namenum = name1.length;

    print('Your name: ${name1[0].toUpperCase()}${name1.substring(1,namenum-1)}${name1[namenum-1].toUpperCase()}');
    print('Name length: $namenum');
    
    /* Create a Dart console program that will accept 10 numbers and display the largest entered number*/
    /*
    int? max;
    print('Enter 10 numbers:');
    for(int i=0; i<11; i++){
        int num = int.parse(stdin.readLineSync()!);
        //didn't really used bubble sort cause I don't now instead I just used a null to pick the largest number
        if(max == null || num > max){
            max = num;
        }
    }
    print('Largest entered number is $max');
    */
}