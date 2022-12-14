
import 'package:flutter/material.dart';
import 'package:photo_sharing_clone_app/widgets/text_field_container.dart';

class InputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final bool obscureBox;
  final TextEditingController textEditingController;

  InputField({
    required this.hintText,
    required this.icon,
    required this.obscureBox,
    required this.textEditingController,


  });
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          cursorColor: Colors.white,
          obscureText: obscureBox,
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            helperStyle: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,

            ),
            prefixIcon: Icon(icon, color: Colors.white, size: 20,),
            border: InputBorder.none,

          ),
        ),
    );
  }
}
