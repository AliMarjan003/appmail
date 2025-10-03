import 'package:flutter/material.dart';

class FbHomeIocn extends StatefulWidget {
  const FbHomeIocn({super.key});

  @override
  State<FbHomeIocn> createState() => _FbHomeIocnState();
}

class _FbHomeIocnState extends State<FbHomeIocn> {
  int isSelected = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSelected = 1;
                      });
                    },
                    icon: Icon(
                      Icons.home_filled,
                      color: isSelected == 1 ? Colors.blueAccent : Colors.black,
                    ),
                  ),
                  if (isSelected == 1)
                    Container(
                      height: 3,
                      width: 20,
                      color: Colors.blueAccent,
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSelected = 2;
                      });
                    },
                    icon: Icon(
                      Icons.video_collection,
                      color: isSelected == 2 ? Colors.blueAccent : Colors.black,
                    ),
                  ),
                  if (isSelected == 2)
                    Container(
                      height: 3,
                      width: 20,
                      color: Colors.blueAccent,
                    ),
                ],
              ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSelected = 3;
                    });
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: isSelected == 3 ? Colors.blueAccent : Colors.black,
                  ),
                ),
                if (isSelected == 3)
                  Container(
                    height: 3,
                    width: 20,
                    color: Colors.blueAccent,
                  ),
              ],
            ),
            ]
          ),
          Expanded(
            child: isSelected == 1
                ? Column(
              children: [
                Container(
                  height :190,
                  padding: EdgeInsets.symmetric(horizontal: 8 ,vertical: 8),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                      itemBuilder: (context,index)
                  {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [CircleAvatar(),
                          Spacer(),
                          Text("data")],
                        ),
                      )
                    );
                  }
                  ),
                ),
                Expanded(child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index)
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(),
                        trailing: Icon(Icons.more_horiz),
                        title: Text("data"),
                        subtitle: Text("data"),
                      ),
                    SizedBox(height:  10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height:250,
                          width:double.infinity,
                          color: Colors.yellow,
                        ),
                      )],
                  );
                }
                )
                ),
              ],
            )
                :isSelected==2? ListView.builder(
              itemCount: 10, // Added itemCount for demonstration
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("data"),
                      subtitle: Text("data"),
                      trailing: Icon(Icons.more_horiz),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                );
              },
            )
                :isSelected == 3
                ? ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(),
                  title: Text('Notification $index'),
                  subtitle: Text('New update at ${DateTime.now()}'),
                  trailing: Icon(Icons.check_circle),
                );
              },
            )
                : ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Menu Option $index'),
                  onTap: () {
                    // Handle menu item tap
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}