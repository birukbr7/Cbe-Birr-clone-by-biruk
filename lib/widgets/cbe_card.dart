import 'package:cbebirrbybr7/widgets/card_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CbeCard extends StatelessWidget {
  const CbeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11, right: 11, top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: const AssetImage('images/card.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
              ),
              child: const CardContent(),
            ),
          ),
          const Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromRGBO(143, 39, 143, 1),
                child: Icon(
                  FontAwesomeIcons.paintbrush,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
    );
  }
}
