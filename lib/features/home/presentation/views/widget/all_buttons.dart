import 'package:flutter/cupertino.dart';

import 'button_widget.dart';

class AllButtons extends StatelessWidget {
  const AllButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          ButtonWidget(buttonText: 'Membership',),
          ButtonWidget(buttonText: 'Birthday',),
          ButtonWidget(buttonText: 'Photo session',),
        ],
      ),
    );
  }
}