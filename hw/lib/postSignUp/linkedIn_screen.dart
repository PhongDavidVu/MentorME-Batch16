import 'package:flutter/material.dart';

class LinkedInScreen extends StatelessWidget {
  const LinkedInScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('LinkedIn'),
        ),
        body: Center(
          child: Text('Welcome to LinkedIn',
              style: Theme.of(context).textTheme.headlineLarge),
        ),
      );
}
