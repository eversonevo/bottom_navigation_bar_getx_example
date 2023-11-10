import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
    
    const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('HOME PAGE')),
            body: Container(child: Text("HOME"),)            
            );        
    }       
}