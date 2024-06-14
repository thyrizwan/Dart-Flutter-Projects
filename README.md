# Projects on Dart

### Getting Started

1. **Prerequisites:**
    - Install the Dart SDK ([https://dart.dev/get-dart](https://dart.dev/get-dart))
    - Set up a code editor or IDE (e.g., Visual Studio Code) with Dart support

2. **Clone or Download the Project:**
    - If using Git, clone the repository: `git clone https://github.com/thyrizwan/Dart-Projects.git`
    - Otherwise, download the project files manually.

3. **Run the Project:**
    - Open a terminal in the project directory.
    - ```bash
      dart file-name.extension
      ```
## Folder Structure

```
main/
├──.idea/
├──projects/
|    ├── Project 00 Using 'Class'.dart  // Individual
|    ├── Project 01 Using 'Class'.dart  // List-based
└── README.md                    // This file
```
___
### Project 00 & 01 Description

This project explores object-oriented programming concepts in Dart by creating a `Car` class with various properties and methods.

**Understanding the Code**

- **`Car` Class:**
    - Properties:
        - `brand` (String): Brand of the car.
        - `model` (String): Model of the car.
        - `year` (int): Year the car was made.
        - `milesDriven` (double): Number of miles driven by the car.
        - `numberOfCars` (static int): Keeps track of the total number of `Car` objects created (incremented on creation).
    - Methods:
        - `drive(double miles)`: Adds `miles` to the `milesDriven` property.
        - `getMilesDriven()`: Returns the current value of `milesDriven`.
        - `getBrand()`, `getModel()`, `getYear()`: Getters for respective properties.
        - `getAge()`: Calculates and returns the age of the car based on `year`.
- **`main()` Function:**
    - **Project 00:** Creates three individual `Car` objects with different values, drives them, and prints their information.
    - **Project 01:** Creates a list of `Car` objects, drives them, and prints their information using a loop.

**Project 00: Individual Car Objects**
This project focuses on creating specific instances of `Car` objects with unique properties. It demonstrates:

- Class definition with attributes and methods for brand, model, year, miles driven, driving behavior, retrieving information, and calculating car age.
- Creating multiple `Car` objects within the `main` function using the constructor.
- Calling methods on each object to drive, retrieve information, and print details.

**Project 01: List-Based Implementation**
This project explores utilizing a list to store and manage `Car` objects:

- Class definition remains the same as Project 00.
- `main` function creates a list of `Car` objects.
- A loop iterates through the list, calling methods on each object to drive, retrieve information, and print details.

### Key Concepts

- **Classes**: Encapsulate data (properties) and behavior (methods).
- **Objects**: Instances of classes that hold specific data values.
- **Getters and Setters**: Access and modify properties in a controlled manner.
- **Static Properties**: Belong to the class itself, not individual objects.
- **List**: A collection of objects to store and manage multiple instances.
- **Loops**: Iterate through elements in a collection (e.g., list) for processing.
---
### Future Enhancements
- **Error Handling:** Implement input validation and error handling (e.g., for invalid mileage values).
- **User Input:** Allow users to input car information during runtime.
- **Inheritance:** Explore creating subclasses of `Car` for different car types (e.g., ElectricCar, Truck).
- **Persistence:** Implement data persistence mechanisms (e.g., JSON, databases) to store and retrieve car data beyond program execution.

### Contributing
- Feel free to fork the repository and submit pull requests with improvements or new features.
- Raise issues on the project's issue tracker for bug reports or feature requests.

### Author(s)
- [Rizwan Ansari](https://github.com/thyrizwan)
