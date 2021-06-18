import 'package:demo/chapter7/provider/change_notifier_provider.dart';
import 'package:demo/chapter7/shoppingcart/cart_model.dart';
import 'package:demo/chapter7/shoppingcart/consumer.dart';
import 'package:demo/chapter7/shoppingcart/item.dart';
import 'package:flutter/material.dart';

class ProviderRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProviderRouteState();
  }
}

class _ProviderRouteState extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider<CartModel>(
        data: CartModel(),
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                /* Builder(builder: (context) {
                  var cart = ChangeNotifierProvider.of<CartModel>(context);
                  return Text('总价：${cart.totalPrice}');
                }),
                Builder(builder: (context) {
                  print('Button build');
                  return ElevatedButton(
                      onPressed: () {
                        ChangeNotifierProvider.of<CartModel>(context)
                            .add(Item(20.0, 1));
                      },
                      child: Text('添加商品'));
                }),*/
                Consumer<CartModel>(
                    builder: (context, cart) => Text('总价：${cart.totalPrice}')),
                Builder(builder: (context) {
                  print('Button build');
                  return ElevatedButton(
                      onPressed: () {
                        ChangeNotifierProvider.of_l<CartModel>(context,
                                listen: false)
                            .add(Item(20.0, 1));
                      },
                      child: Text('添加商品'));
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}
