import 'dart:collection';

import 'package:demo/chapter7/shoppingcart/item.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // 用于保存购物车中的商品列表
  final List<Item> _items = [];

  // 禁止改变购物车里的商品信息
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  // 购物车中商品的总价
  double get totalPrice => _items.fold(
      0,
      (previousValue, element) =>
          previousValue + element.count * element.price);

  // 将[item]添加到购物车，这是唯一一种能从外部改变购物车的方法。
  void add(Item item){
    _items.add(item);
    // 通知监听器，重建构建InheritedProvider,更新状态。
    notifyListeners();
  }
}
