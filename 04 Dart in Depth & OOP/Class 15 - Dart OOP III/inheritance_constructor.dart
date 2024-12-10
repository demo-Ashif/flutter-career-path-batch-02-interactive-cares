void main() {
  Smartphone phone = Smartphone('Pixel 3', 'Google');
}

class ElectronicDevice {
  //super class

  double height = 50;
  double width = 45;
  double thickness = 4;

  ElectronicDevice(String brand) {
    print('This is electronic device of: $brand');
  }
}

class Smartphone extends ElectronicDevice {
  //sub class
  Smartphone(String model, String brand) : super(brand) {
    print('This is smartphone model: $model');
  }
}
