import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will prove us total and height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin:  EdgeInsets.only(
            bottom: (kDefaultPadding) * 2.5,
          ),
          // it will cover 20% of our total height
          height: (size.height) * 0.2,
          child: Stack(
            children: [
              Container(
                padding:  EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: (36 + kDefaultPadding),
                ),
                height: ((size.height) * 0.2) - 27,
                decoration:  BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Hi UiShop!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                     Spacer(),
                    Image.asset(
                      'assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin:  EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  padding:  EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset:  Offset(0, 10),
                        blurRadius: 50.0,
                        color: kPrimaryColor.withOpacity(
                          0.23,
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(
                                0.5,
                              ),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffixIcon: SvgPicture.asset('assets/icons/search.svg',),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
