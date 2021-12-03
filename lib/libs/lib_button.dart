import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LibButton extends StatelessWidget {
  // const LibButton({Key? key}) : super(key: key);

  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final String svgName;
  final Color? svgColor;
  final void Function()? onPressed;

  const LibButton({
    Key? key,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.text = 'button',
    this.svgName = '',
    this.svgColor = Colors.black,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        onPrimary: textColor,
        side: const BorderSide(
          color: Colors.black12,
        ),
      ),
      onPressed: () {
        debugPrint('{$svgName}');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SvgPicture.asset(
            svgName,
            width: 20,
            height: 20,
            color: svgColor,
          ),
          Text(text),
        ],
      ),
    );
  }
}
