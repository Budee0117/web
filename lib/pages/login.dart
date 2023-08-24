import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myflutter/pages/SideBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    _loadStoredEmail();
  }

  void _loadStoredEmail() {
    setState(() {
      storedEmail = box.read('email') ??
          ''; // Get the email or use an empty string if not found.
    });
  }

  void _saveEmail(String email) {
    box.write('email', email);
  }

  String storedEmail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.vertical(),
                  ),
                  padding: const EdgeInsets.symmetric(),
                  child: Image.asset(
                    'image/origin.png', // Add your logo image here
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement your login logic here
                    // For this example, we'll just print the email and password
                    print('Email: ${_emailController.text}');
                    print('Password: ${_passwordController.text}');

                    // Check if email and password are not empty
                    String email = _emailController.text.trim();
                    String password = _passwordController.text.trim();
                    if (true) {
                      //email.isNotEmpty && password.isNotEmpty
                      // Successful login, navigate to the home screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SideBar(
                            title: '', storedEmail: '',
                          ),
                        ),
                      );
                    }
                    // else {
                    //   // Show an error message or handle the login failure
                    //   print('Login failed. Please enter valid credentials.');
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
