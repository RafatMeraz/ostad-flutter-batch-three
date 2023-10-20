import 'package:ecommerce/data/models/cart_list_model.dart';
import 'package:ecommerce/presentation/state_holders/cart_list_controller.dart';
import 'package:ecommerce/presentation/ui/screens/product_details_screen.dart';
import 'package:ecommerce/presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/presentation/ui/widgets/custom_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductCard extends StatelessWidget {
  final CartData cartData;
  const CartProductCard({
    super.key, required this.cartData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetailsScreen(productId: cartData.product!.id!));
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(cartData.product?.image ?? ''))),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartData.product?.title ?? '',
                                style:
                                    const TextStyle(fontSize: 18, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                  children: [
                                    TextSpan(text: 'Color: ${cartData.color ?? ''} '),
                                    TextSpan(text: 'Size: ${cartData.size}'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.find<CartListController>().removeFromCart(cartData.productId!);
                            },
                            icon: const Icon(Icons.delete_outline))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${cartData.product?.price ?? ''}',
                          style: const TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 85,
                          child: FittedBox(
                            child: CustomStepper(
                              lowerLimit: 1,
                              upperLimit: 20,
                              stepValue: 1,
                              value: cartData.quantity ?? 1,
                              onChange: (int value) {
                                Get.find<CartListController>().changeItem(cartData.id!, value);
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
