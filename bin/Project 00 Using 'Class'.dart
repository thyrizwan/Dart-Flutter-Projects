class Car {
  static int numberOfCars = 0;

  final String carBrandName;
  final String carModelName;
  final int yearOfCarPurchase;
  double milesDriven = 0.0;

  Car(this.carBrandName, this.carModelName, this.yearOfCarPurchase) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return carBrandName;
  }

  String getModel() {
    return carModelName;
  }

  int getYear() {
    return yearOfCarPurchase;
  }

  int getAge() {
    return DateTime.now().year - yearOfCarPurchase;
  }
}

void main() {
  Car car1 = Car("Bentley", "Continental", 2024);
  Car car2 = Car("Rolls Royce", "Phantom", 2023);
  Car car3 = Car("Mercedes-Benz", "Maybach S-Class S 680", 2022);

  car1.drive(450);
  car2.drive(1050);
  car3.drive(4507);

  print("Car 1: ${car1.getBrand()} ${car1.getModel()} (${car1.getYear()})");
  print("  Miles Driven: ${car1.getMilesDriven()}");
  print("  Age: ${car1.getAge()} ${spellWord(car1.getAge())}");
  print("");

  print("Car 2: ${car2.getBrand()} ${car2.getModel()} (${car2.getYear()})");
  print("  Miles Driven: ${car2.getMilesDriven()}");
  print("  Age: ${car2.getAge()} ${spellWord(car2.getAge())}");
  print("");

  print("Car 3: ${car3.getBrand()} ${car3.getModel()} (${car3.getYear()})");
  print("  Miles Driven: ${car3.getMilesDriven()}");
  print("  Age: ${car3.getAge()} ${spellWord(car3.getAge())}");
  print("");

  print("Total Cars Created: ${Car.numberOfCars}");
}

String spellWord(int carAge) {
  return carAge <= 1 ? 'year' : 'years';
}
