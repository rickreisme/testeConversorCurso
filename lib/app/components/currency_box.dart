import 'package:conversor_curso1/app/models/currency_model.dart';
import 'package:flutter/material.dart';


class CurrencyBox extends StatelessWidget {

  final List<CurrencyModel> items;
  final TextEditingController controller;

  const CurrencyBox({super.key, required this.items, required this.controller});


  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton<CurrencyModel>(
                        iconEnabledColor: Colors.amber,
                        items: items
                              .map((e) => DropdownMenuItem(
                              child: Text(e.name)))
                              .toList(),
                        onChanged: (value){},
                      ),
                    ),
                  ),
                SizedBox(width: 10),
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                      ),
                    ),
                  ),
                ],
             );
  }
}