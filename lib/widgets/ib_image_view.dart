part of 'widgets.dart';

enum ImageType { network, asset, file }

enum FileType { svg, png }

class IBImageView extends StatelessWidget {
  const IBImageView._({
    Key? key,
    required this.uri,
    required this.imageType,
    required this.fileType,
    this.width,
    this.height,
    this.fit,
    this.color,
    this.colorBlendMode,
    this.isLoadingBuilderEnabled = false,
  }) : super(key: key);

  final String uri;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;
  final BlendMode? colorBlendMode;
  final bool isLoadingBuilderEnabled;
  final ImageType imageType;
  final FileType fileType;

  factory IBImageView.asset(
    String uri, {
    required final FileType fileType,
    final double? width,
    final double? height,
    final BoxFit? fit,
    final Color? color,
    final BlendMode? colorBlendMode,
    final bool isLoadingBuilderEnabled = false,
    final bool cacheColorFilter = false,
  }) {
    return IBImageView._(
      uri: uri,
      fileType: fileType,
      imageType: ImageType.asset,
      width: width,
      height: height,
      fit: fit,
      colorBlendMode: colorBlendMode,
      color: color,
      isLoadingBuilderEnabled: isLoadingBuilderEnabled,
    );
  }

  /// for cases when we want to support file image
  factory IBImageView.file(
    String uri, {
    required final FileType fileType,
    final double? width,
    final double? height,
    final BoxFit? fit,
    final Color? color,
    final bool isLoadingBuilderEnabled = false,
  }) {
    return IBImageView._(
      uri: uri,
      fileType: fileType,
      imageType: ImageType.file,
      width: width,
      height: height,
      fit: fit,
      color: color,
      isLoadingBuilderEnabled: isLoadingBuilderEnabled,
    );
  }

  factory IBImageView.network(
    String uri, {
    final double? width,
    final double? height,
    final BoxFit? fit,
    final Color? color,
    final bool isLoadingBuilderEnabled = false,
    final bool isRegularSvg = true,
    final bool cacheColorFilter = false,
  }) {
    return IBImageView._(
      uri: uri,
      fileType: _getFileType(uri.toLowerCase()),
      imageType: ImageType.network,
      width: width,
      height: height,
      fit: fit,
      color: color,
      isLoadingBuilderEnabled: isLoadingBuilderEnabled,
    );
  }

  ///for cases when we want to support both network and asset image by analysing the url
  factory IBImageView.universal(
    String uri, {
    final double? width,
    final double? height,
    final BoxFit? fit,
    final Color? color,
    BlendMode? colorBlendMode,
    final bool isLoadingBuilderEnabled = false,
    final bool cacheColorFilter = false,
  }) {
    return IBImageView._(
      uri: uri,
      fileType: _getFileType(uri.toLowerCase()),
      imageType: _getImageType(uri.toLowerCase()),
      width: width,
      height: height,
      fit: fit,
      color: color,
      colorBlendMode: colorBlendMode,
      isLoadingBuilderEnabled: isLoadingBuilderEnabled,
    );
  }

  static FileType _getFileType(String uri) {
    if (uri.endsWith("svg")) return FileType.svg;
    return FileType.png;
  }

  static ImageType _getImageType(String uri) {
    if (uri.startsWith("http")) return ImageType.network;
    if (uri.startsWith("file")) return ImageType.file;
    return ImageType.asset;
  }

  @override
  Widget build(BuildContext context) {
    if (uri.isEmpty) {
      return SizedBox(
        width: width,
        height: height,
      );
    }

    return switch (imageType) {
      ImageType.asset => _buildImageTypeAsset(),
      ImageType.file => _buildImageTypeFile(),
      _ => _buildImageTypeNetwork(),
    };
  }

  Widget _buildImageTypeAsset() {
    if (fileType == FileType.png) {
      return Image.asset(
        uri,
        width: width,
        height: height,
        fit: fit,
        color: color,
        colorBlendMode: colorBlendMode,
      );
    }

    return SvgPicture.asset(
      uri,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      color: color,
    );
  }

  Widget _buildImageTypeFile() {
    if (fileType == FileType.png) {
      return Image.file(
        File(uri),
        width: width,
        height: height,
        fit: fit,
        color: color,
      );
    }

    return SvgPicture.file(
      File(uri),
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      color: color,
    );
  }

  Widget _buildImageTypeNetwork() {
    if (fileType == FileType.png) {
      return CachedNetworkImage(
        imageUrl: uri,
        placeholder: !isLoadingBuilderEnabled
            ? null
            : (BuildContext context, String url) {
                return ShimmerSkeleton(width: width, height: height);
              },
        width: width,
        height: height,
        fit: fit,
        color: color,
      );
    }

    return SizedBox(
      height: height,
      width: width,
      child: ScalableImageWidget.fromSISource(
        fit: fit ?? BoxFit.contain,
        si: CachedNetworkSvgSource(uri, currentColor: color),
      ),
    );
  }
}
