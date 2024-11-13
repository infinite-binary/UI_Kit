part of 'widgets.dart';

enum SelectionChipType { lightChip, darkChip }

class IBChip extends StatelessWidget {
  const IBChip({
    super.key,
    this.isSelected = false,
    this.onTap,
    this.title,
    this.color,
    this.selectedColor,
    this.type = SelectionChipType.darkChip,
  });

  final void Function(bool)? onTap;
  final String? title;
  final bool isSelected;
  final Color? color;
  final Color? selectedColor;
  final SelectionChipType type;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      shape: _getChipShapeByType(),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Safe to use '!'
          if (title != null)
            Text(
              title!,
              style: type == SelectionChipType.lightChip
                  ? context.semiBold12WithBlack2
                  : context.semiBold12.copyWith(
                      color: isSelected ? IBColors.White : IBColors.Black1,
                    ),
            ),
          if (isSelected) ...[
            // Space between text and icon
            const SizedBox(width: IBConstants.SPACING_6),
            _getCloseIconByType(),
          ],
        ],
      ),
      padding: IBPaddings.PADDINGx12x6.copyWith(right: isSelected ? 6 : 12),
      labelPadding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      selected: isSelected,
      elevation: 0,
      backgroundColor: color ?? IBColors.snow2,
      selectedColor: selectedColor ?? _getSelectedColorByType(),
      showCheckmark: false,
      onSelected: onTap,
    );
  }

  RoundedRectangleBorder _getChipShapeByType() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(IBConstants.BORDER_RADIUSx24),
      side: type == SelectionChipType.lightChip
          ? isSelected
              ? const BorderSide(color: IBColors.Grey1)
              : const BorderSide(color: IBColors.snow2)
          : BorderSide.none,
    );
  }

  Widget _getCloseIconByType() {
    switch (type) {
      case SelectionChipType.lightChip:
        return ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Icon(
            Icons.close,
            size: IBConstants.SIZE_20.height,
          ),
        );
      case SelectionChipType.darkChip:
        return Icon(
          Icons.cancel,
          color: IBColors.White.withOpacity(0.8),
          size: IBConstants.SIZE_20.height,
        );
    }
  }

  Color _getSelectedColorByType() {
    return type == SelectionChipType.lightChip ? IBColors.Snow1 : IBColors.Black1;
  }
}
