import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LibButton extends StatelessWidget {
  const LibButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        side: const BorderSide(
          color: Colors.black12,
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SvgPicture.asset(
            'assets/google-brands.svg',
            width: 20,
            height: 20,
            color: Colors.black,
          ),
          const Text('Login with Google'),
        ],
      ),
    );
  }
}
