import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/components.dart';
import 'strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.white,
        shadowColor: AppColor.appBarShadow,
        elevation: 0.2,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBarContainers(
                  sizeHeight: 48,
                  sizeWidth: 286,
                  containerColor: AppColor.appBarShadow,
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите название',
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0, right: 8.0),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: AppBarContainers(
                    sizeHeight: 48,
                    sizeWidth: 48,
                    radius: 12,
                    containerColor: AppColor.color3,
                    containerIcon: Icons.percent_outlined,
                    child: const Image(image: AssetImage('assets/images/Vector.png'),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  AppBarContainers(
                    sizeWidth: 88,
                    child: const Center(
                      child: Text(
                        'Все',
                        style: MyTextStyles.latoRegularGreen600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppBarContainers(
                      containerColor: AppColor.mainLightGreen,
                      sizeWidth: 110,
                      child: const Center(
                        child: Text(
                          'Цветы',
                          style: MyTextStyles.latoRegularWhite600,
                        ),
                      ),
                    ),
                  ),
                  AppBarContainers(
                    sizeWidth: 128,
                    child: const Center(
                      child: Text(
                        'Подарки',
                        style: MyTextStyles.latoRegularGreen600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarIcons(
        firstIcon: Icons.home,
        firstLabel: 'Home',
        secondIcon: Icons.home,
        secondLabel: 'Home',
        thirdIcon: Icons.home,
        thirdLabel: 'Home',
        fourthIcon: Icons.home,
        fourthLabel: 'Home',
      ),
    );
  }
}
 class AppBarContainers extends StatelessWidget {
  double sizeHeight;
  double sizeWidth;
  double radius;
  Color containerColor;
  final containerIcon;
  final String? text;
  final child;

  AppBarContainers(
      {this.sizeHeight = 40,
      required this.sizeWidth,
      this.radius = 16,
      this.containerColor = AppColor.buttonShadow,
      this.containerIcon,
      this.text,
      this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

class ProductCard extends StatefulWidget {
  double sizeHeight;
  double sizeWidth;
  double radius;
  Color containerColor;
  final String? productName;
  final String? sellCost;
  final String? discountCost;

  ProductCard(
      {this.sizeHeight = 200,
      this.sizeWidth = 169,
      this.radius = 16,
      this.containerColor = AppColor.color6,
      this.productName,
      this.discountCost,
      this.sellCost,
      super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool like = false;
  static const image = AssetImage('assets/images/Ic_Favorite.png');
  AssetImage _containerImage =image ;

  void _dislike() {
    setState(() {
      _containerImage = AssetImage('assets/images/Ic_Favorite.png');
    });
  }

  void _like() {
    setState(() {
      _containerImage = AssetImage('assets/images/Ic_Favorite_filled.png');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 20),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            height: widget.sizeHeight + 70,
            width: widget.sizeWidth,
            decoration: BoxDecoration(
              color: widget.containerColor,
              borderRadius: BorderRadius.circular(widget.radius),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(widget.radius),
            child: Container(
              height: widget.sizeHeight,
              width: widget.sizeWidth,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(widget.radius),
              ),
              child: const Image(
                image: AssetImage('assets/images/first.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                if (like == false) {
                  like = true;
                  _like();
                } else if (like == true) {
                  like = false;
                  _dislike();
                }
              },
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: AppColor.likeBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image(image: _containerImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBarIcons extends StatelessWidget {
  final IconData firstIcon;
  final IconData secondIcon;
  final IconData thirdIcon;
  final IconData fourthIcon;
  final String firstLabel;
  final String secondLabel;
  final String thirdLabel;
  final String fourthLabel;

  const NavigationBarIcons(
      {required this.firstIcon,
      required this.firstLabel,
      required this.secondIcon,
      required this.secondLabel,
      required this.thirdIcon,
      required this.thirdLabel,
      required this.fourthIcon,
      required this.fourthLabel,
      super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColor.greyText,
      unselectedItemColor: AppColor.greyText,
      items: [
        BottomNavigationBarItem(
          icon: Icon(firstIcon),
          label: firstLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(firstIcon),
          label: secondLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(firstIcon),
          label: thirdLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(firstIcon),
          label: fourthLabel,
        ),
      ],
    );
  }
}
