// ignore_for_file: non_constant_identifier_names

void main(){
  print(sum(25,32,c:16));
  ////////////////////////////
  List x=[55,6,8,9,3];
  print(largestnumbers(x));
  ///////////////////////////
  print(factorialnumber(5));
  ///////////////////////////////
  String names="good morning";
  voules(names);
  /////////////////////////////////
  Car object_BMW=Car();
  object_BMW.brand="BMW";
  object_BMW.model="x6";
  object_BMW.year=2016;
  object_BMW.color="black";
  object_BMW.display();
  Car object_toyota=Car();
  object_toyota.brand="Toyota";
  object_toyota.model="corolla";
  object_toyota.year=2018;
  object_toyota.color="red";
  object_toyota.display();
  Car object_volvo=Car();
  object_volvo.brand="Volvo";
  object_volvo.model="v40";
  object_volvo.year=2023;
  object_volvo.color="white";
  object_volvo.display();
}
////////////////////////////////////////////////////////////////////////////////////
//1. Write a function that accepts 3 numbers and returns the sum of these numbers
dynamic sum(int a , int b , {int c=0, int d=0}){
  return(a+b+c+d);
}
/////////////////////////////////////////////////////////////////////////////////
//2. Write a function that checks The sum of the largest two numbers in a list

dynamic largestnumbers(List x){
  int largenumber=x[0];
  for(int i=1;i<x.length;i++){
    if(x[i]>largenumber){
      largenumber=x[i];
    }
  }
  x.remove(largenumber);
  int secondnumber=x[0];
  for(int i=1;i<x.length;i++){
    if(x[i]>secondnumber){
      secondnumber=x[i];
    }
  }
  return(secondnumber+largenumber);
}
////////////////////////////////////////////////////////////////////////////////////
//I. Write a function that returns the factorial of a number

int factorialnumber(int number){
int num1=1;  int num2=2; int factor=0;
  for(int i=1;i<number;i++){
   factor=num1*num2;
    num1=factor;
    num2=i+2;
  }
  return(factor);
}
//////////////////////////////////////////////////////////////////////////////////////////////
//2. Write a function that accepts a string as a parameter and counts the number of vowels within the string
dynamic voules(String names){
  List namesList=names.split("");
  List voulesList=[];
  for(int i=0;i<namesList.length;i++){
    if(namesList[i]=='a'||namesList[i]=='e'||namesList[i]=='i'||namesList[i]=='o'||namesList[i]=='u'){
      voulesList.add(namesList[i]);
    }
  }
  print(voulesList.length);
}
///////////////////////////////////////////////////////////////////////////////////////////////
//Make a Car class and make 3 objs

class Car{
  String? brand;
  String? model;
  double? year;
  String? color;
  display(){
    print("car brand is $brand\ncar model is $model\nmanufacturing year is $year\ncolor is $color");
  }
}