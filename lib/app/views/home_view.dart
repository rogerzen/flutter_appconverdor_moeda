import 'package:flutter/material.dart';
import 'package:flutter_appconverdor_moeda/app/components/button_convert.dart';
import 'package:flutter_appconverdor_moeda/app/controllers/home_controller.dart';

import '../components/currency_box.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController? homeController;
  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              CurrencyBox(
                selectedItem: homeController!.toCurrency,
                controller: toText,
                items: homeController!.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController?.toCurrency = model!;
                  });
                },
                key: null,
              ),
              CurrencyBox(
                controller: fromText,
                selectedItem: homeController!.fromCurrency,
                items: homeController!.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController?.fromCurrency = model!;
                  });
                },
                key: null,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amberAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      homeController?.convert();
                    });
                  },
                  child: const Text('Converter')),
            ],
          ),
        ),
      ),
    );
  }
}
