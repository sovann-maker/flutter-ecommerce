import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CartScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder()),
                onPressed: () {},
                child: Text(
                  'GO TO CHECKOUT',
                  style: Theme.of(context).textTheme.headline3!,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Cart().freeDeliveryString,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add More Items',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return CartProductCard(product: Cart().products[index]);
                      },
                      itemCount: Cart().products.length,
                    )),
              ],
            ),
            Column(
              children: [
                const Divider(thickness: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SUBTOTAL',
                              style: Theme.of(context).textTheme.headline5),
                          Text('\$${Cart().subTotalString}',
                              style: Theme.of(context).textTheme.headline5)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DELIVERY FEE',
                              style: Theme.of(context).textTheme.headline5),
                          Text('\$${Cart().deliveryFeeString}',
                              style: Theme.of(context).textTheme.headline5)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: Colors.black.withAlpha(50)),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'TOTAL',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                '\$${Cart().totalString}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
