import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/tasks_list.dart';

class TasksScreen  extends StatelessWidget {

 Widget buildBottomSheet(BuildContext context) => Container();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      onPressed: () {
        showModalBottomSheet(context: context, builder: buildBottomSheet);

      },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:EdgeInsets.only(top: 60.0, left: 30.0,right:30.0, bottom: 30.0 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(
                        Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,),
                backgroundColor: Colors.white,
                radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),),
                Text(
                  '12 tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                  ),
                ),

              ],

            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20.0),
                    topRight: Radius.circular(12.0),
                  )
              ),
              child: TasksList(),
            ),
           ),
        ],
      ),
    );
  }
}




