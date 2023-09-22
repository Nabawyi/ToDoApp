import 'package:flutter/material.dart';
import 'package:todoapp/utill/my_button.dart';

class Dialogbox extends StatelessWidget {
   Dialogbox({super.key, required this.controller,required this.oncancele,required this.onsave});

  final TextEditingController controller;

  VoidCallback onsave;
  VoidCallback oncancele;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).backgroundColor,
      content:  Container(
        height: 128,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'add new task ',
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Mybtn(text: 'Save', onpressed: onsave),
              const SizedBox(
                width: 8,
              ),
              Mybtn(text: 'Cancel', onpressed: oncancele),
            ],
          )
        ]),
      ),
    );
  }
}
