import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Child();
  }
}

class Child extends State<RememberMe> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        value: this.valuefirst,
        onChanged: (value) {
          setState(() {
            if (value == true) {
              this.valuefirst = true;
            } else {
              this.valuefirst = false;
            }
          });
        },
        activeColor: Colors.greenAccent,
        checkColor: Colors.black,
        overlayColor: MaterialStateProperty.all(Colors.white),
        tristate: false,
      ),
      const Text(
        "remember me",
        style: TextStyle(fontWeight: FontWeight.w600),
      )
    ]);
  }
}
