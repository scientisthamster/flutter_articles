import 'package:flutter/material.dart';

class ArticleInfoItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ArticleInfoItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14.0,
          color:
              Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.5),
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          text,
          style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .color!
                  .withOpacity(0.5)),
        ),
      ],
    );
  }
}
