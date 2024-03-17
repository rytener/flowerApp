import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/icons.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';
import 'package:lilar_test_app/products/products_list.dart';
import 'package:lilar_test_app/ui/navigationbar/bottom_nav_bar.dart';
import 'package:lilar_test_app/ui/products_cards/home_products.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
                    color: AppColors.color6,
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите название',
                      hintStyle: AppTextStyles.latoRegularGrey400,
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Icon(
                          FlowerAppIcons.icSearch,
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
                    child: const Image(
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
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        const Positioned(
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FavoriteProduct(),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${AppProducts.productsMap.elementAt(index)['title']}",
                            style: AppTextStyles.latoRegularDarkGreen600,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "${AppProducts.productsMap.elementAt(index)['sellCost']}",
                                style: AppTextStyles.latoBoldGreen800,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

