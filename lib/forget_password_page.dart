import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2), // Set background color for the entire page
      // appBar: AppBar(
      //   title: Text('Forget Password'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle forget password logic here
                // You may want to show a success message or navigate to another page
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
