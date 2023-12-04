import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Splash'), backgroundColor: Colors.grey[400],),
      body: Center(
        child: Container(
          child: Text(FirebaseRemoteConfig.instance.getString('api_token')),
        ))
    );
  }
}