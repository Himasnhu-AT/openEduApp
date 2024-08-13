import 'package:flutter/material.dart';
import 'package:openedu/screens/home/home_screen.dart';

class VerifyEmail extends StatefulWidget {
  final String userEmail;
  const VerifyEmail({super.key, required this.userEmail});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool _wrongCredentials = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the vertification code sent to your email ${widget.userEmail}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Verification Code',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            if (_wrongCredentials)
              const Text('Wrong Verification Code')
            else
              const SizedBox(height: 0),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login/signup logic
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (route) => false,
                );
              },
              child: const Text('Verify Email'),
            ),
          ],
        ),
      ),
    );
  }
}
