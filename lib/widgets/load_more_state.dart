import 'package:flutter/material.dart';

abstract class IBLoadMore<T extends StatefulWidget> extends State<T> {
  late ScrollController scrollController;
  final double threshold;
  IBLoadMore({this.threshold = 0});

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    tryLoadMore((scrollController.offset + threshold) >= scrollController.position.maxScrollExtent);
  }

  void tryLoadMore(bool isScrollEnd);
}
