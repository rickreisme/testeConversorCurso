import 'package:conversor_curso1/app/components/currency_box.dart';
import 'package:conversor_curso1/app/controllers/home_controller.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController? homeController;

  HomeView() {
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png', 
                width: 150, 
                height: 150,
              ),
              const SizedBox(height: 35,),
              const CurrencyBox(),
              const SizedBox(height: 10,),
              const CurrencyBox(),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                }, 
                child: const Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}