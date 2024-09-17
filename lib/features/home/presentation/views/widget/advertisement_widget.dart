import 'package:flutter/cupertino.dart';

import '../../../../../core/assets/fonts.dart';

class AdvertisementWidget extends StatelessWidget {
  final String label;
  const AdvertisementWidget({
    super.key, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(label, style: Fonts.TextSize20, ),
    );
  }
}