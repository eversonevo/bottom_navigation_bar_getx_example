import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './produtos_controller.dart';

class ProdutosPage extends GetView<ProdutosController> {
    
    const ProdutosPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('PRODUTOS PAGE')),

            body: Container(),
        );
    }
}