void main() {
  Smartphone phone = Smartphone();
  phone.height = 49;
  phone.width = 34;
  phone.thickness = 5;
  phone.printHeight();
  phone.printWidth();
  phone.printThickness();
  phone.callNumber();
  phone.playGame();

  Television tv = Television();
  tv.height = 95;
  tv.width = 43;
  tv.thickness = 10;
  tv.printHeight();
  tv.printWidth();
  tv.printThickness();
  tv.watch();
}

//Digital Devices - TV, Smartphone

//Smartphone
//height, width, thickness, aspectRatio, call(), game(), watch()

//TV
//height, width, thickness, aspectRatio, watch()

//Parent Class

class ElectronicDevice {
  //Parent // Super
  double height = 50;
  double width = 45;
  double thickness = 4;
  double aspectRatio = 1.6;

  void watch() {
    print('Electronics item is being watched!');
  }

  void printHeight() {
    print('Height of item = $height');
  }

  void printWidth() {
    print('Width of item = $width');
  }

  void printThickness() {
    print('Thickness of item = $thickness');
  }
}

class Smartphone extends ElectronicDevice {
  //Child //Sub
  void callNumber() {
    print('Calling contact on Mobile Phone');
  }

  void playGame() {
    print('Play games on Mobile Phone');
  }
}

class Television extends ElectronicDevice {
  //Child //Sub
}
