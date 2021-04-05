import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    this.image,
    this.text,
    this.color,
    this.radius,
    this.onPressed,
  });

  final Widget image; //final은 stl위젯에서 rebuild 하면 재설정이 가능하다
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed; //콜백은 간단히 버튼을 눌렀을 때 기능을 수행해줌

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
