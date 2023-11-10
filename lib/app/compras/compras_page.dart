import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './compras_controller.dart';

class ComprasPage extends GetView<ComprasController> {
    
    const ComprasPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('COMPRAS PAGE')),
            body: Container(color: Colors.red),
        );
    }
}