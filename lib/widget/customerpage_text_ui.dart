import 'package:flutter/material.dart';
import '../const.dart';

class CreateCustomerUi extends StatelessWidget {
  final String name;
  final String details;
  final void Function() onpress;

  final IconData? iconsBut;
  final IconData? iconsBut2;

  final TextEditingController? Controlleer;

  const CreateCustomerUi(
      {super.key,
      required this.name,
      required this.details,
      required this.onpress,
      this.iconsBut2,
      this.iconsBut = Icons.edit, this.Controlleer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: textstyle(headingsub, FontWeight.w500, 16),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: onpress,
                  icon: Icon(
                    iconsBut2,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: onpress,
                  icon: Icon(
                    iconsBut,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          // color: Colors.red,

          child: TextField(
controller: Controlleer,
            decoration: InputDecoration(
              disabledBorder: InputBorder.none,
              border: InputBorder.none,
hintStyle: textstyle(kgrey, FontWeight.w500, 16),
              hintText: details,
            ),
          ),
        ),
        // Text(
        //   details,
        //   style:textstyle(kgrey, FontWeight.w500, 16),
        // ),
        const SizedBox(
          height: 0,
        ),
        const Divider(
          height: 0,
          thickness: 1,
          color: kgrey,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
