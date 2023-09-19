import 'package:ecommerce/presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/presentation/ui/widgets/custom_stepper.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://static.nike.com/a/images/t_default/6c350499-1796-4393-a50f-11ee2ffc154e/custom-nike-dunk-low-by-you-shoes.png'))),
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
                            const Text(
                              'Bata New shoe a#sdfasdf new product',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 12),
                                children: [
                                  TextSpan(text: 'Color: Black '),
                                  TextSpan(text: 'Size: XL'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete_outline))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$100',
                        style: TextStyle(
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
                            value: 1,
                            onChange: (int value) {},
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
    );
  }
}
