import 'package:flutter/material.dart';
import 'package:instagramclone/widgets/textinput.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 150,
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
              textEditingController: _passwordcontroller,
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
              hintText: "Password"),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              print("Logging in");
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Container(
                    color: Colors.blue,
                    height: 40,
                    width: 300,
                    child: const Center(child: Text("Log In")))),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?  "),
                  GestureDetector(
                      onTap: () {
                        print("signing in");
                      },
                      child: const Text(
                        "  Sign up",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ))
        ],
      ),
    )));
  }
}
