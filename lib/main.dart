import 'package:flutter/material.dart';
import 'button.dart';
void main() {
  runApp( MaterialApp(
    home:ButtonList(),
  ));
}

class ButtonList extends StatefulWidget {
  const ButtonList({Key? key}) : super(key: key);

  @override
  State<ButtonList> createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  List <Button> buttons=[
    Button(btntext: 'Primary', isDisabled: false, bgcolor: 0xFF6A1B9A,hasIcon: false),
    Button(btntext: 'Secondary', isDisabled: false, bgcolor: 0xFFEA80FC,hasIcon: true),
    Button(btntext: 'Disabled', isDisabled: true, bgcolor: 0xFFBDBDBD,hasIcon: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(
  title:Text('Buttons, Buttons, Buttons'),
  centerTitle: true,
  backgroundColor: Colors.blueGrey,
),
body:Center(
  child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:buttons.map((button) =>
      Container(
        width: 300,
        decoration: BoxDecoration(
            color:Color(button.bgcolor),
            borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.only(top: 20.0),
        child: button.hasIcon? TextButton.icon(
          icon:const Icon(
            Icons.add_circle_outline_rounded,
            color:Colors.white,
          ),
          label:Text(button.btntext,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: button.isDisabled ?  null : (){}
        ) :
        TextButton(
            child:Text(button.btntext,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onPressed: button.isDisabled ?  null : (){}
        )
        ,
      ),

    ).toList(),

  ) ,
)

    );
  }
}


