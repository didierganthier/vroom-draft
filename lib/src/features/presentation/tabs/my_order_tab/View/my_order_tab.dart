import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/tabs/my_order_tab/View/components/empty_view.dart';

class MyOrdersTab extends StatefulWidget {
  @override
  _MyOrdersTabState createState() => _MyOrdersTabState();
}

class _MyOrdersTabState extends State<MyOrdersTab> {
  final emptyOrderState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: emptyOrderState ? EmptyOrderView() : Text('Order View'),
    );
  }
}
