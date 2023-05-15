class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  late double milesDriven;

  Car(this.brand, this.model, this.year) {
    milesDriven = 0;
    numberOfCars++;
  }


  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "premio", 2015);
  car1.drive(800);

  Car car2 = Car("Audi", "A6", 2018);
  car2.drive(650);

  Car car3 = Car("BMW", "X5", 2020);
  car3.drive(450);

  print("Car 1: Brand - ${car1.getBrand()}, Model - ${car1.getModel()}, Year - ${car1.getYear()}, Miles driven - ${car1.getMilesDriven()}, Age - ${car1.getAge()}");
  print("Car 2: Brand - ${car2.getBrand()}, Model - ${car2.getModel()}, Year - ${car2.getYear()}, Miles driven - ${car2.getMilesDriven()}, Age - ${car2.getAge()}");
  print("Car 3: Brand - ${car3.getBrand()}, Model - ${car3.getModel()}, Year - ${car3.getYear()}, Miles driven - ${car3.getMilesDriven()}, Age - ${car3.getAge()}");

  print("Total number of Cars: ${Car.numberOfCars}");
}