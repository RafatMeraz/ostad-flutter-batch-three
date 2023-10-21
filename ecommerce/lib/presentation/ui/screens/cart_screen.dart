import 'package:ecommerce/presentation/state_holders/cart_list_controller.dart';
import 'package:ecommerce/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/presentation/ui/screens/checkout_screen.dart';
import 'package:ecommerce/presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/presentation/ui/widgets/cart_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<CartListController>().getCartList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Carts',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<MainBottomNavController>().backToHome();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Get.find<CartListController>().getCartList();
        },
        child: GetBuilder<CartListController>(
          builder: (cartListController) {
            if (cartListController.getCartListInProgress) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartListController.cartListModel.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return CartProductCard(
                        cartData: cartListController.cartListModel.data![index],
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total Price',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$ ${cartListController.totalPrice}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            if (Get.find<CartListController>().cartListModel.data?.isNotEmpty ?? false) {
                              Get.to(() => const CheckOutScreen());
                            }
                          },
                          child: const Text('Checkout'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

