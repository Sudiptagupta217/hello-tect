import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

class UpcomingBookingItem extends StatefulWidget {
  const UpcomingBookingItem({Key? key}) : super(key: key);

  @override
  State<UpcomingBookingItem> createState() => _UpcomingBookingItemState();
}

class _UpcomingBookingItemState extends State<UpcomingBookingItem> {

  var UpcomingBookingItem=[
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'status': 'Confirmed'},
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
            Text("Upcoming Bookings ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

            ListView(
              padding: EdgeInsets.only(top: 10,bottom: 20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children:UpcomingBookingItem.map((value){
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
                          Navigator.pushNamed(context, "/UpcomingBookingItemDetailsScreen");
                        },
                        child: ListTile(
                          leading: const Image(image: AssetImage("assets/images/item.png")),
                          title: Text(value['name'].toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          subtitle: Text(value['date'].toString()),
                          trailing: Text(value['status'].toString(),style: const TextStyle(fontSize: 14,color:DefaultColor.light_blue,fontWeight: FontWeight.w600),),
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
