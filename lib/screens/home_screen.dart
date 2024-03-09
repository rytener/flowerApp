import 'package:flutter/material.dart';
import 'package:lilar_test_app/assetsprovider/colors.dart';
import 'package:lilar_test_app/assetsprovider/icons.dart';
import 'package:lilar_test_app/assetsprovider/images.dart';
import 'package:lilar_test_app/ui/navigationbar/bottom_nav_bar.dart';
import '../assetsprovider/strings.dart';
import 'package:lilar_test_app/assetsprovider/text_styles.dart';
import 'package:lilar_test_app/products/products_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color15,
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.white,
        shadowColor: AppColors.appBarShadow,
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
                  containerColor: AppColors.color6,
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите название',hintStyle: AppTextStyles.latoRegularGrey400,
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Icon(FlowerAppIcons.ic_search,color: AppColors.greyText,),
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
                    containerColor: AppColors.color3,
                    child: Image(
                      image: AssetImage('assets/images/Vector.png'),
                    ),
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
                        style: AppTextStyles.latoRegularGreen600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppBarContainers(
                      containerColor: AppColors.mainLightGreen,
                      sizeWidth: 110,
                      child: const Center(
                        child: Text(
                          'Цветы',
                          style: AppTextStyles.latoRegularWhite600,
                        ),
                      ),
                    ),
                  ),
                  AppBarContainers(
                    sizeWidth: 128,
                    child: const Center(
                      child: Text(
                        'Подарки',
                        style: AppTextStyles.latoRegularGreen600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 20,bottom: 20),
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisExtent: 270,
          mainAxisSpacing: 20,
        ),
        itemCount: AppProducts.productsMap.length,
        itemBuilder: (_, index) {
          return Center(
            child: Container(
              height: 270,
              width: 168,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.color6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 200,
                      width: 168,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        "${AppProducts.productsMap.elementAt(index)['images']}",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:10,left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${AppProducts.productsMap.elementAt(index)['title']}",style: AppTextStyles.latoRegularDarkGreen600,),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                                "${AppProducts.productsMap.elementAt(index)['sellCost']}",style: AppTextStyles.latoBoldGreen800,),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  "${AppProducts.productsMap.elementAt(index)['discountCost']}",style: AppTextStyles.latoRegularGrey600,),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(
        //const NavigationBar(
        firstIcon: FlowerAppIcons.ic_home,
        firstLabel: 'Главная',
        secondIcon: FlowerAppIcons.ic_shopping_bag,
        secondLabel: 'Корзина',
        thirdIcon: FlowerAppIcons.ic_favorite,
        thirdLabel: 'Избранное',
        fourthIcon: FlowerAppIcons.ic_profile,
        fourthLabel: 'Профиль',
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
      this.containerColor = AppColors.buttonShadow,
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
      this.containerColor = Colors.black,
      this.productName,
      this.discountCost,
      this.sellCost,
      super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool like = false;
  static const _icon = Icon(FlowerAppIcons.ic_favorite,
      size: 20, color: AppColors.mainLightGreen);
  var _containerIcon = _icon;

  void _dislike() {
    setState(() {
      _containerIcon = Icon(FlowerAppIcons.ic_favorite,
          size: 20, color: AppColors.mainLightGreen);
    });
  }

  void _like() {
    setState(() {
      _containerIcon = Icon(FlowerAppIcons.ic_favorite_filled,
          size: 20, color: AppColors.mainLightGreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius),
      ),
    );
  }
}

/*Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 10),
      child: Stack(alignment: Alignment.center,
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
                  color: AppColors.likeBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _containerIcon,
              ),
            ),
          ),
        ],
      ),
    );
*/
