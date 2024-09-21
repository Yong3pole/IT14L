import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String errorMessage;
  late bool isError;

  var txtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 38,
  );

  var btnStyle = ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(50),
  );

  var errorTxtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 1,
    fontSize: 18,
  );

  @override
  void initState() {
    errorMessage = "This is an error message";
    isError = false;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  checkLogin(username, password) {
    setState(() {
      if (username == "") {
        errorMessage = "Please enter username";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please enter password";
        isError = true;
      } else {
        errorMessage = "";
        isError = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SIGN IN', style: txtStyle),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter username: ',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 15), // sizedbox
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter password: ',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 15), // sizedbox
              ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  checkLogin(
                    usernameController.text,
                    passwordController.text,
                  );
                },
                child: const Text('LOGIN'),
              ),
              const SizedBox(height: 15), //sizedbox
              (isError)
                  ? Text(errorMessage, style: errorTxtStyle)
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
