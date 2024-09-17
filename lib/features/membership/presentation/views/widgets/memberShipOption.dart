import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class MembershipOption extends StatelessWidget {
  final String title;
  final Widget description;
  final bool isSelected;
  final VoidCallback onTap;

  const MembershipOption({
    required this.title,
    required this.description,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        padding:const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                isSelected
                    ? const Icon(
                        Icons.check_box,
                        color: Colors.red,
                        size: 30,
                      )
                    : const Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.amber,
                        size: 30,
                      ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Fonts.H2FontsNormal,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: description,
            ),
          ],
        ),
      ),
    );
  }
}
