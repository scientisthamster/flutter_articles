import 'package:flutter/material.dart';
import 'package:flutter_articles/presentation/styles/app_colors.dart';
import 'package:flutter_articles/repositories/article_repository.dart';
import 'package:provider/provider.dart';

class OfflineBanner extends StatelessWidget {
  final RefreshCallback onRefresh;

  const OfflineBanner({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<HttpArticleRepository, bool>(
        builder: (context, bool isOffline, _) => isOffline
            ? GestureDetector(
                onTap: onRefresh,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.3),
                  ),
                  child: const Text(
                    'You are offline! Tap to try again',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Container(),
        selector: (context, HttpArticleRepository articleRepository) =>
            articleRepository.isOffline);
  }
}
