import 'package:flutter/material.dart';

class DiscountBox extends StatelessWidget {
  const DiscountBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discounts Available",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,fontFamily: "Comfortaa"
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.all(5),
                      backgroundColor:
                      Colors.deepOrange.withOpacity(.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Add promo",
                      style: TextStyle(color: Colors.redAccent,fontFamily: "Comfortaa"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.local_offer_outlined, size: 20),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "30% off 10 booking (up to EGP 150)",
                          style: TextStyle(fontSize: 11,color: Color(0xFF9A9A9A),fontFamily: "Comfortaa"),

                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(3),
                          backgroundColor:
                          Colors.deepOrange.withOpacity(.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Apply",
                          style: TextStyle(color: Colors.redAccent,fontFamily: "Comfortaa"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
            Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Booking Charges",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,fontFamily: "Comfortaa"
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "x1 Day EGP 100.0 x 1 Seat",
                    style: TextStyle(fontSize: 14,fontFamily: "Comfortaa"),
                  ),
                  Text(
                    "EGP 100.0",
                    style: TextStyle(fontSize: 14,fontFamily: "Comfortaa"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Due",
                    style: TextStyle(fontSize: 14,color: Colors.deepOrange,fontFamily: "Comfortaa"),
                  ),
                  Text(
                    "EGP 100.0",
                    style: TextStyle(fontSize: 14,color: Colors.deepOrange,fontFamily: "Comfortaa"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
