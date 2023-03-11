import 'package:flutter/material.dart';
import '../colors.dart';

class SignUpTextBox extends StatefulWidget {
  @override
  State<SignUpTextBox> createState() => _SignUpTextBoxChild();
}

class _SignUpTextBoxChild extends State<SignUpTextBox> {
  final userNameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneNumberController = TextEditingController();

  final passwordController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  String? get errorText {
    final pass = passwordController.text;
    if (pass.isEmpty || pass == null) {
      return "password field must not be empty";
    }
    if (pass.length < 8 || pass.length > 16) {
      return "password must between 8 and 16 character";
    }
    if (!pass.contains(RegExp(r"[a-z]"))) {
      return "password must contain at least one lower-case letter";
    }
    if (!pass.contains(RegExp(r"[A-Z]"))) {
      return "password must contain at least one upper-case letter";
    }
    if (!pass.contains(RegExp(r"[0-9]"))) {
      return "password must contain at least one number";
    }
    if (!pass.contains(RegExp(r'!@#$%^&*?'))) {
      return "password must contain at least one of these special characters (!@#\$%^&*?)";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.asset("assets/charityPic.png"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Text(
                        'Create An Account',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: userNameController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "User Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Password",
                          errorText: errorText,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: phoneNumberController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Phone Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: 230,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: null,
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black),
                        ),

                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStateProperty.all(logoColor)),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
