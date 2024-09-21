import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController cPaswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController civilStatusController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
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

  checkRegister(
      name, username, password, cPassword, gender, civilStatus, birthDate) {
    setState(() {
      if (name == "") {
        errorMessage = "Please enter name!";
        isError = true;
      } else if (username == "") {
        errorMessage = "Please enter username!";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please enter password!";
        isError = true;
      } else if (cPassword == "") {
        errorMessage = "Please confirm password!";
        isError = true;
      } else if (cPassword != password) {
        errorMessage = "Both passwords must be the same!";
        isError = true;
      } else if (gender == "") {
        errorMessage = "Please set gender!";
        isError = true;
      } else if (civilStatus == "") {
        errorMessage = "Please set civil status!";
        isError = true;
      } else if (birthDate == "") {
        errorMessage = "Please enter birthday!";
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
              Text('SIGN UP', style: txtStyle),
              const SizedBox(height: 20), // sizedbox
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name: ',
                  prefixIcon: Icon(Icons.account_box),
                ),
              ),
              const SizedBox(height: 20), // sizedbox
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
              TextField(
                obscureText: true,
                controller: cPaswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm password: ',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20), // sizedbox
              TextField(
                controller: genderController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Gender: ',
                  prefixIcon: Icon(Icons.male),
                ),
              ),
              const SizedBox(height: 20), // sizedbox
              TextField(
                controller: civilStatusController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Civil Status: ',
                  prefixIcon: Icon(Icons.social_distance),
                ),
              ),
              const SizedBox(height: 20), // sizedbox
              TextField(
                controller: birthDateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Birthday: ',
                  prefixIcon: Icon(Icons.date_range),
                ),
              ),
              const SizedBox(height: 15), // sizedbox
              ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  checkRegister(
                      nameController.text,
                      usernameController.text,
                      passwordController.text,
                      cPaswordController.text,
                      genderController.text,
                      civilStatusController.text,
                      birthDateController.text);
                },
                child: const Text('REGISTER'),
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
