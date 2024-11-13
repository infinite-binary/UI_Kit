import 'package:flutter/material.dart';

abstract class LoadMoreState<T extends StatefulWidget> extends State<T> {
  late ScrollController scrollController;

  /// The threshold is used to trigger the API call when the user is nearing a certain point,
  /// ensuring faster loading, such as in a (PLP).
  final double threshold;
  LoadMoreState({this.threshold = 0});

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
