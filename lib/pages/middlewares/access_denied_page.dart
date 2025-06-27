import 'package:flutter/material.dart';
    
class AccessDeniedPage extends StatelessWidget {

  const AccessDeniedPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Access Denied'),
      ),
      body: Container(),
    );
  }
}