import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/features/offers/presentation/views/widgets/offers_dialog.dart';
import 'package:flutter/material.dart';

class OfferBox extends StatelessWidget {
  const OfferBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      showDialog(context: context, builder: (BuildContext context) {
        return OffersDialog();
      });
    },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  OffersFeture.offer,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today’s offer",
                      style: TextStyle(fontFamily: "Comfortaa", fontSize: 16),),
                    Row(
                      children: [
                        Text(
                          "10% discount on 3\nhours or more",
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: "Comfortaa"
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.arrow_forward, color: Colors
                              .white,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
