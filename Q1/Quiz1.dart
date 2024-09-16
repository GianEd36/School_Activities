import 'dart:io';

void main(){
  /* Enter sequence of names that'll be terminated by entering the word
  'stop' you can use collections for it then ask the user for a letter that will
  print out the first and last letters of it */
  List<String> names = [];
  String? input;
  while(true){
    print('Enter names: ');
    input = stdin.readLineSync()!;
    if(input.toLowerCase() == 'stop'){break;}
    names.add(input);
  }
  print('Enter letter: ');
  String? searchV = stdin.readLineSync()!;
  print('Entered letter that starts with $searchV or ends with $searchV');
  names.forEach((items){
    if(items[0] == searchV || items[items.length-1] == searchV){
      print(items);
    }
    });
}