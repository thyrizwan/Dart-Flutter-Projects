import 'dart:math';

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
  Random random = Random();

  List<Car> cars = [
    Car("Bentley", "Continental", 2024),
    Car("Rolls Royce", "Phantom", 2023),
    Car("Mercedes-Benz", "Maybach S-Class S 680", 2022),
    Car("Audi", "R8", 2021),
    Car("Jaguar", "XF", 2016),
  ];

  for (var car in cars) {
    car.drive(double.parse((random.nextDouble() * 1000).toStringAsFixed(2)));

    print("Car: ${car.getBrand()} ${car.getModel()} (${car.getYear()})");
    print(
        "  Miles Driven: ${car.getMilesDriven()} miles (${convertMilesToKm(car.getMilesDriven())} KMs)");
    print("  Age: ${car.getAge()} ${spellWord(car.getAge())}");
    print("");
  }

  print("Total Cars Created: ${Car.numberOfCars}");
}

String spellWord(int carAge) {
  if (carAge < 0) {
    return "";
  }
  return carAge <= 1 ? 'year' : 'years';
}

String convertMilesToKm(double miles) {
  double milesToKm = 1.60934;
  return (miles * milesToKm).toStringAsFixed(2);
}
