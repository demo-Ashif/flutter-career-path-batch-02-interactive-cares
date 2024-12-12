class Clock {
  void displayTime() {
    print("Clock shows the time in an analog format.");
  }
}

class DigitalClock extends Clock {
  @override
  void displayTime() {
    super.displayTime();
    print("Digital Clock shows the time in a digital format.");
  }
}

void main() {
  Clock clock;

  // Using the base class reference with the Clock instance
  clock = Clock();
  clock.displayTime(); // Output: Clock shows the time in an analog format.

  // Using the base class reference with the DigitalClock instance
  clock = DigitalClock();
  clock
      .displayTime(); // Output: Digital Clock shows the time in a digital format.
}
