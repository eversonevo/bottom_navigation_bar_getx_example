import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './relatorios_controller.dart';

class RelatoriosPage extends GetView<RelatoriosController> {
    
    const RelatoriosPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
           appBar: AppBar(title: Text('RELATORIOS PAGE')),

            body: Container(),
        );
    }
}