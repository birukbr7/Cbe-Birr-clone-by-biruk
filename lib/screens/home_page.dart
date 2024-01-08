import 'package:carousel_slider/carousel_slider.dart';
import 'package:cbebirrbybr7/widgets/cbe_card.dart';
import 'package:cbebirrbybr7/widgets/grid_contnet.dart';
import 'package:cbebirrbybr7/widgets/home_app_bar.dart';
import 'package:cbebirrbybr7/widgets/image_slider_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<String> carouselImages = const [
    'images/banner_1.jpg',
    'images/banner_2.jpg',
    'images/banner_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(143, 39, 143, 1),
                  Color.fromRGBO(143, 39, 143, 0.3),
                  Colors.white54,
                  Colors.white,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const HomePageAppBar(),
                const CbeCard(),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                          child: Column(
                            children: [
                              const SmallHeader(
                                label: 'QUICK ACCESS',
                              ),
                              const SmallHeader(
                                label: 'Transacion Detail',
                                mainAxisAlignment: MainAxisAlignment.end,
                                doesItHaveIcon: true,
                              ),
                              const GridContent(),
                              const SizedBox(
                                height: 30,
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                  aspectRatio: 39 / 9,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: carouselImages.map((image) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        // height: 150,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Image(image: AssetImage(image)),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              ImageSliderIndicator(
                                carouselImages: carouselImages,
                                currentIndex: _currentIndex,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.qrcode,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SmallHeader extends StatelessWidget {
  final String label;
  final MainAxisAlignment mainAxisAlignment;
  final bool doesItHaveIcon;

  const SmallHeader({
    super.key,
    required this.label,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.doesItHaveIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.purple,
            fontWeight: FontWeight.w500,
          ),
        ),
        doesItHaveIcon
            ? const Icon(
                Icons.arrow_right,
                color: Colors.purple,
              )
            : const SizedBox()
      ],
    );
  }
}
