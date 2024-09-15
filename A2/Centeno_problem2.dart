import 'dart:io';
void main(){
    /* (You can use Collections) Write a program that prompts the user to enter the name of the student and their respective scores, and 
    output the student names with highest and lowest scores, respectively. The input must be terminated by entering the word ‘stop’ in the student's name. 
    Sample program output:
    Enter student’s name: Ben
    Enter score: 34
    Enter student’s name: Mark
    Enter score: 51
    Enter student’s name: Marie
    Enter score: 40
    Enter student’s name: stop
    Mark got the highest score
    Ben got the lowest score
    //end of program execution
    */
    String? names, deanlist, droplist;
    double? grades, highest, lowest; 
    Map<String, double> student ={};
    do{
        print('Enter student name: ');
        names = stdin.readLineSync()!;
        if(names.toLowerCase() == 'stop'){break;} //Even though I've already put it on looping conditional we still need it to immediately take effect on "Enter student name" so yea I had to
        print('Enter the students score: ');
        grades = double.parse(stdin.readLineSync()!);
        student[names] = grades;
    }while(names.toLowerCase() != 'stop'); //can be true
    student.forEach((names,grades) => (highest == null || grades < highest!) ? highest=grades : deanlist=names); 
    student.forEach((names,grades) => (lowest == null || grades > lowest!) ? lowest=grades : droplist=names); 
    print('$deanlist got the highest score');
    print('$droplist got the lowest score');
}