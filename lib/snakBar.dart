import 'package:flutter/Material.dart';

class SnakeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          my_Custom_SnakBar(context);
        },
        child: Text('click'),
      ),
    ));
  }
}

my_Custom_SnakBar(context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(8),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white, size: 40),
            SizedBox(width: 20),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Success',
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),

                ),
                Spacer(),
                Text(
                  'Flutter Custom Snake Bar Success Message...!',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ))
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
