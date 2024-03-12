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
                Container(
                  height: 48,
                  width: 286,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.color6),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите название',
                      hintStyle: AppTextStyles.latoRegularGrey400,
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Icon(
                          FlowerAppIcons.ic_search,
                          color: AppColors.greyText,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.color3),
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
                    text: 'Все',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppBarContainers(
                      selectedColor: AppColors.mainLightGreen,
                      sizeWidth: 110,
                      text: 'Цветы',
                    ),
                  ),
                  AppBarContainers(
                    sizeWidth: 128,
                    text: 'Подарки',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 20, bottom: 20),
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
                    Stack(
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
                        Positioned(
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FavoriteProduct(
                              index1: index,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${AppProducts.productsMap.elementAt(index)['title']}",
                            style: AppTextStyles.latoRegularDarkGreen600,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "${AppProducts.productsMap.elementAt(index)['sellCost']}",
                                style: AppTextStyles.latoBoldGreen800,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  "${AppProducts.productsMap.elementAt(index)['discountCost']}",
                                  style: AppTextStyles.latoRegularGrey600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class AppBarContainers extends StatelessWidget {
  double sizeHeight;
  double sizeWidth;
  double radius;
  Color selectedColor;
  Color unselectedColor;
  TextStyle style;
  final containerIcon;
  final String text;

  // final VoidCallback onPressed;
  bool isSelected;

  AppBarContainers(
      {this.sizeHeight = 40,
      this.style = AppTextStyles.latoRegularGreen600,
      required this.sizeWidth,
      this.radius = 16,
      this.unselectedColor = AppColors.buttonShadow,
      this.selectedColor = AppColors.mainLightGreen,
      this.isSelected = false,
      this.containerIcon,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(borderRadius: BorderRadius.circular(16),
      onTap: (){},
      child: Container(
        height: sizeHeight,
        width: sizeWidth,
        decoration: BoxDecoration(
          color: unselectedColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.latoRegularGreen600,
          ),
        ),
      ),
    );
  }
}

class FavoriteProduct extends StatefulWidget {
  int index1;

  FavoriteProduct({required this.index1, super.key});

  @override
  State<FavoriteProduct> createState() => _FavoriteProduct();
}

class _FavoriteProduct extends State<FavoriteProduct> {
  bool isFavorite = false;
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
    return InkWell(
      onTap: () {
        if (isFavorite == false) {
          isFavorite = true;
          _like();
        } else if (isFavorite == true) {
          isFavorite = false;
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
    );
  }
}
