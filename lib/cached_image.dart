import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CachedImage extends StatefulWidget {
  const CachedImage({
    super.key,
    required this.url,
    this.cacheManager,
    this.useCache = true,
    this.showLoading = false,
  });

  final String url;
  final CacheManager? cacheManager;
  final bool useCache;
  final bool showLoading;

  @override
  CachedImageState createState() => CachedImageState();
}

@visibleForTesting
class CachedImageState extends State<CachedImage> {
  final imageKey = GlobalKey(debugLabel: 'CachedImage');

  ImageProvider<Object>? get imageProvider => _imageProvider;
  ImageProvider<Object>? _imageProvider;

  dynamic get error => _error;
  dynamic _error;

  CacheManager get _defaultCacheManager => CacheManager(
        Config(
          'CachedImageKey',
          stalePeriod: const Duration(days: 1),
          maxNrOfCacheObjects: 20,
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (!widget.useCache) {
      return Image(
        key: imageKey,
        image: NetworkImage(widget.url),
        loadingBuilder: widget.showLoading
            ? (context, child, progress) {
                if (progress == null) {
                  return child;
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            : null,
      );
    }
    return CachedNetworkImage(
      cacheManager: widget.cacheManager ?? _defaultCacheManager,
      imageUrl: widget.url,
      imageBuilder: (context, imageProvider) {
        _imageProvider = imageProvider;
        return Image(
          key: imageKey,
          image: imageProvider,
        );
      },
      placeholder: widget.showLoading
          ? (context, url) => const Center(
                child: CircularProgressIndicator(),
              )
          : null,
      errorWidget: (context, url, dynamic error) {
        _error = error;
        return Icon(
          Icons.error,
        );
      },
    );
  }
}