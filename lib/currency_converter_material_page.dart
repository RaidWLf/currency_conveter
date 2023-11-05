import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurCovMaterialPage extends StatelessWidget {
  const CurCovMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: const Text(
                "Currency Converter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: const Text(
                "0",
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  labelText: "Enter amount in USD",
                  hintText: "500",
                  prefixIcon: Icon(Icons.monetization_on)),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Convert button pressed");
                    }
                  },
                  // style: ButtonStyle(
                  //     elevation: const MaterialStatePropertyAll(10),
                  //     minimumSize: const MaterialStatePropertyAll(
                  //         Size(double.infinity, 50)),
                  //     shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40)))),
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  child: const Text("Convert")),
            ),
          ],
        ),
      ),
    ));
  }
}
