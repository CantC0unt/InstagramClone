import 'package:flutter/material.dart';
import 'package:instagramclone/widgets/textinput.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 130,
          ),
          const Image(
              height: 70, image: AssetImage("assets/instagramlogowhite.png")),
          const SizedBox(
            height: 5,
          ),
          TextInput(
              textEditingController: _emailcontroller,
              isPassword: false,
              textInputType: TextInputType.emailAddress,
              hintText: "Email Address"),
          const SizedBox(
            height: 25,
          ),
          TextInput(
              textEditingController: _fullnamecontroller,
              isPassword: false,
              textInputType: TextInputType.name,
              hintText: "Full Name"),
          const SizedBox(
            height: 25,
          ),
          TextInput(
              textEditingController: _usernamecontroller,
              isPassword: false,
              textInputType: TextInputType.name,
              hintText: "Username"),
          const SizedBox(
            height: 25,
          ),
          TextInput(
              textEditingController: _passwordcontroller,
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
              hintText: "Password"),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              print("Signing up");
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Container(
                    color: Colors.blue,
                    height: 40,
                    width: 300,
                    child: const Center(child: Text("Sign Up")))),
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account?  "),
                  GestureDetector(
                      onTap: () {
                        print("logging in");
                      },
                      child: const Text(
                        "  Log In",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ))
        ],
      ),
    )));
  }
}
