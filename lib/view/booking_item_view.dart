import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

class BookingItem extends StatefulWidget {
  const BookingItem({Key? key}) : super(key: key);

  @override
  State<BookingItem> createState() => _BookingItemState();
}

class _BookingItemState extends State<BookingItem> {

  var BookingItem=[
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35),
      color: DefaultColor.bg_color,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("Bookings Made By Me",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

            ListView(
              padding: EdgeInsets.only(top: 10,bottom: 20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children:BookingItem.map((value){
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 5,
                              offset: Offset(0, 2), // vertical offset
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/BookingDetailsScreen");
                        },
                        child: ListTile(
                          leading: const Image(image: AssetImage("assets/images/item.png")),
                          title: Text(value['name'].toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          subtitle: Text(value['date'].toString()),
                          trailing: Text(value['rate'].toString(),style: const TextStyle(fontSize: 14,color:DefaultColor.light_blue,fontWeight: FontWeight.w600),),
                        ),
                      ),
                    ),
                  );
                }).toList()
            )




          ],
        )
    );
  }
}
