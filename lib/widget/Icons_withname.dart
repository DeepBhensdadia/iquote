import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper.dart';



class IconWithName extends StatefulWidget {
  final String name;

  final String imageAsset;
  const IconWithName(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.imageAsset})
      : super(key: key);
  final void Function() onPressed;

  @override
  State<IconWithName> createState() => _IconWithNameState();
}

class _IconWithNameState extends State<IconWithName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              widget.imageAsset,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                fontSize: screenheight(context, dividedby: 70),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
