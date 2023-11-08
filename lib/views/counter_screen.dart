import 'package:concept_of_state/controller/counter_controller.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterController controller = CounterController();

  @override
  void initState() {
    //controller.getAllData();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("Did update dependency");
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("widget rebuilding.....");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hi! This is Number: ${controller.count}",
              style: TextStyle(
                fontSize: 24,
                color: controller.isClicked == true ? Colors.red : Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    controller.setColor();
                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 100),
                FloatingActionButton(
                  onPressed: () {
                    // This is way to call a function
                    controller.increment();
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  controller.getAllData();
                },
                child: const Text("Fetch Data"))
          ],
        ),
      ),
    );
  }
}



// Provider --------
// Getx -----------------------------------------------------

// Riverpod
// Bloc



// Redux
// ValueNotifier
// cubit
// Hook


