import 'package:flutter/material.dart';
import 'package:notes_tick_app/constants/constants.dart';

class CustomBUtton extends StatelessWidget {
  const CustomBUtton({super.key,this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimarycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}
