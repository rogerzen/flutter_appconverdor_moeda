import 'package:flutter/material.dart';
import 'package:flutter_appconverdor_moeda/app/components/button_convert.dart';
import 'package:flutter_appconverdor_moeda/app/controllers/home_controller.dart';

import '../components/currency_box.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController? homeController;

  HomeView({super.key}) {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 150.0, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/pagamento-por-conversao.png',
                width: 150,
                height: 150,
              ),
              const CurrencyBox(),
              const CurrencyBox(),
              const SizedBox(height: 50),
              const ButtonConvert(),
            ],
          ),
        ),
      ),
    );
  }
}
