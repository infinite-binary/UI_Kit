part of '../widgets.dart';

enum IBButtonSize { small, medium, large, xs }

enum IBButtonIconPosition { left, right }

enum IBButtonState { enabled, disabled }

enum IBButtonType {
  primary,
  primaryRed,
  secondaryMint,
  secondaryWhite,
  secondaryTransparent,
  secondaryBlurred
}

class IBButtonIconModel {
  const IBButtonIconModel(this.iconAsset, {this.position = IBButtonIconPosition.left});

  final String iconAsset;
  final IBButtonIconPosition position;
}
