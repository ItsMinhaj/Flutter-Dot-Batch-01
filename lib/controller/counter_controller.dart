class CounterController {
  int count = 0;
  bool isClicked = false;

  void setColor() {
    isClicked = !isClicked;
    print(isClicked);
  }

  void increment() {
    // count = count + 1;

    count++;
    print(count);
  }

  void decrement() {
    count--;
  }

  getAllData() {
    print("Api all data is fetched");
  }
}
