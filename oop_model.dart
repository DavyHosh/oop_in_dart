import 'dart.io';

//Define an interface
abstract class Animal {
  void makeSound();
}

//Define a class that implements the Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}


//Define a superclass
class Vehicle {
  void move() {
    print('Vehicle is moving');
  }
}


//Define a subclass that overrides the move method
class Car extends Vehicle {
  @override
  void move(){
    print('Car is being driven');
  }
}


//Define a class that reads data from a file and initializes an instance
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(dat[0], int.parse(data[1]));
  }
}

void main() {
  //Create an instance of the Dog class
  Dog dog = Dog();
  dog.makeSound();
  
//Create an instance of the Car class
Car car = Car();
car.move();

//Initialise a Person instance with data from a file
File file = File('person_data.txt');
Person person = Person.fromFile(file);
print('Name: ${person.name}, Age: ${person.age}');

//Demonstrate the use of a loop
for (int i = 1; i<=5; i++) {
  print('Count: $i');
  }
}