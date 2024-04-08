import 'package:flutter/material.dart';
import 'package:openedu/screens/auth/sign_in_screen.dart';
import 'package:openedu/screens/auth/verify_email.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    // bool _obscureText = true;
    String userEmail = '';

    // void _togglePasswordVisibility() {
    //   setState(() {
    //     _obscureText = !_obscureText;
    //   });
    // }

    // bool isValidEmail(String email) {
    //   final RegExp regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    //   return regex.hasMatch(email);
    // }

    void checkEmail() {
      if (emailController.text.isEmpty) {
      } else {
        userEmail = emailController.text;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign UP'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person_pin_outlined),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
            ),
            // const SizedBox(height: 16),
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: 'Password',
            //     prefixIcon: Icon(Icons.lock),
            //     suffixIcon: GestureDetector(
            //       onTap: _togglePasswordVisibility,
            //       child: Icon(
            //         _obscureText ? Icons.visibility : Icons.visibility_off,
            //       ),
            //     ),
            //   ),
            //   obscureText: _obscureText,
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: 'Confirm Password',
            //     prefixIcon: Icon(Icons.lock),
            //     suffixIcon: GestureDetector(
            //       onTap: _togglePasswordVisibility,
            //       child: Icon(
            //         _obscureText ? Icons.visibility : Icons.visibility_off,
            //       ),
            //     ),
            //   ),
            //   obscureText: _obscureText,
            // ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                checkEmail();
                // TODO: Implement signup logic
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerifyEmail(userEmail: userEmail),
                  ),
                );
              },
              child: const Text('Signup'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Text(
                'Already have an account? Sign Up',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
