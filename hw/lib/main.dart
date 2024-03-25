import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw/gen/assets.gen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container (
          alignment: Alignment.center,
            child: Column (
            children: [
                Text('Create account' ,
                      style: TextStyle(fontSize:  18, fontWeight: FontWeight.w600)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Assets.female.image(width: 88, height: 88),
                ),
              Text('Create account with', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  AccountHolder(image: Assets.git.image(width:  43, height:  43)),
                  AccountHolder(image: Assets.google.image(width:  43, height:  43)),
                  AccountHolder(image: Assets.linkedIN.image(width:  43, height:  43))

                ],
              ),
              Text('or'),
              IconTextFieldRow(hint: 'Name', image: Assets.human.path),
              IconTextFieldRow(hint: 'Email', image: Assets.mail.path),
              IconTextFieldRow(hint: 'Password', image: Assets.key.path)
            ]
          )
          ,
        )
      ),
    )
    );
  }
}

class AccountHolder extends StatelessWidget {
  const AccountHolder({required this.image, super.key});
  final Image image;

  @override
  Widget build(BuildContext context)  => Container(
    margin:  EdgeInsets.all(8),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius:  40,
              blurStyle: BlurStyle.outer,
              color: Colors.black.withOpacity(0.3),
              offset:  Offset(2,2)
          )
        ]
    ),
    child: image ,
  );

}
class IconTextFieldRow extends StatelessWidget {
  const IconTextFieldRow({required this.image, required this.hint, super.key});

  final String image;
  final String hint;

  @override
  Widget build(BuildContext context) =>  Padding(
    padding: const EdgeInsets.symmetric(horizontal:  16, vertical: 8),
    child: Row(
      children: [
        Image.asset(image,width: 43, height: 43),
        Expanded(
            child: Container(
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(2,2),
                    blurRadius: 40
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: TextField(
                decoration:  InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: hint
                )
              ),
            )
        )
      ],
    ),
  );
}
