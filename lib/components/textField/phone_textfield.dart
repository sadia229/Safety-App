import 'package:flutter/material.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import '../../styles/k_text_style.dart';

// ignore: must_be_immutable
class KPhone extends StatefulWidget {
  final String label;
  final String hintText;
  final bool readOnly;

  KPhone(
      {Key? key,
      required this.label,
      required this.controller,
      required this.hintText,
      required this.readOnly})
      : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  State<KPhone> createState() => _KPhoneState();
}

class _KPhoneState extends State<KPhone> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        String pattern = r'(^(?:[+0]9)?[0-9]{11}$)';
        RegExp regExp = RegExp(pattern);
        if (value == null || value.isEmpty) {
          return 'Please FillUp';
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter valid mobile number';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      readOnly: widget.readOnly,
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.send_to_mobile,
          color: KColor.icon,
        ),
        hintText: widget.hintText,
        hintStyle: KTextStyle.subtitle3.copyWith(
          color: KColor.blackbg.withOpacity(0.4),
        ),
        labelText: widget.label,
        labelStyle: KTextStyle.subtitle3.copyWith(
          color: KColor.blackbg.withOpacity(0.4),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: KColor.appBackground.withOpacity(0.4),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: KColor.white,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
