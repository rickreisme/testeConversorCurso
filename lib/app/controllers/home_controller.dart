// ignore_for_file: unrelated_type_equality_checks

import 'package:conversor_curso1/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
   List<CurrencyModel>? currencies;

   TextEditingController toText;
   TextEditingController fromText;

  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;

  HomeController(this.toText, this.fromText){
   currencies = CurrencyModel.getCurrencies();
     toCurrency = currencies![0];
     fromCurrency = currencies![1];
  }

  
  void convert(){
    
    String text = toText.text;
    double value = double.tryParse(text)?? 1.0;
    double returnValue = 0;

    if(fromCurrency!.name == 'Real'){
      returnValue = value * toCurrency!.real;
    }else if(fromCurrency == 'Dolar'){
      returnValue = value * toCurrency!.dolar;
    }else if(fromCurrency == 'Euro'){
      returnValue = value * toCurrency!.euro;
    }else if(fromCurrency == 'Bitcoin'){
      returnValue = value * toCurrency!.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);

  }

}