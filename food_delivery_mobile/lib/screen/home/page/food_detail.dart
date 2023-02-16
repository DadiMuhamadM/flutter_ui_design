import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_mobile/thema.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});
  static const nameRoute = '/FoodDetail';

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorblack2,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 30,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorABU,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          "assets/icon/back.png",
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "assets/icon/loveicon.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                  color: colorWhite,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                  ),
                  Image.asset(
                    data["imageUrlFoodItems"],
                    width: 250,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    data["textFoodItems"],
                    style: black28,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/icon/jam.png",
                          width: 33,
                        ),
                        Text(
                          "30 Min",
                          style: black20,
                        ),
                        Image.asset(
                          "assets/icon/fire.png",
                          width: 33,
                        ),
                        Text(
                          "275 colories",
                          style: black20,
                        ),
                        Image.asset(
                          "assets/icon/star.png",
                          width: 33,
                        ),
                        Text(
                          "4.9",
                          style: black20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      "Chicken curry with rice is a flavorful dish made by simmering chunks of chicken in a spicy curry sauce and serving it over a bed of steamed rice.The curry sauce is typically made with a blend of aromatic spices and coriander, as well as coconut milk for creaminess.  ",
                      style: medium20.copyWith(color: colorDeskripsi),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: colorabuabu,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "-",
                                  style: black20,
                                ),
                                Text(
                                  "2",
                                  style: black20,
                                ),
                                Text(
                                  "+",
                                  style: black20,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: colorBlack,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Add to cart",
                                  style: bold16.copyWith(color: colorWhite),
                                ),
                                Text(
                                  "\$ 22",
                                  style: black20.copyWith(color: colorWhite),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
