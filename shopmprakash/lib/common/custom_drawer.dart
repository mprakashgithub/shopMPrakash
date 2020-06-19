import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(elevation: 50.0,
      child: ListView(
        
        children: <Widget>[
//          DrawerHeader(
//
//            child: Text('Main Menu',
//              style: TextStyle(
//                // backgroundColor: Colors.amber,
//                  color: Colors.black),),
//          ),
         Container(
           height: 60.0,
          // width: 200.0,
          child: ListTile(
            
            title: Text('Main Menu',
            style: TextStyle(
              // backgroundColor: Colors.amber,
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0, ),
            
            ),
            
          ),
          color: Colors.amber,
         ),
         // new Divider(color: Colors.grey,),
          ExpansionTile(

            backgroundColor: Colors.grey[200],
            title: Text('Consumer Electroics'),
            trailing: Icon(Icons.add),
            children: <Widget>[
              ExpansionTile(
                title: Text('Electronics'),
                trailing: Icon(Icons.add),
                children: <Widget>[
                  ListTile(
              title: Text('DJI Phantom'),
              onTap: (){},
            ),
            ListTile(
              title: Text('DJI Phantom'),
              onTap: (){},
            ),
                ],
              ),
                new Divider(color: Colors.grey,),
          ListTile(
            title: Text('Today Deals'),
            onTap: (){},
          ),
          new Divider(color: Colors.grey,),
          ListTile(
            title: Text('Electronics'),
            trailing: Icon(Icons.add),
            onTap: (){},
          ),
//          new Divider(color: Colors.grey,),

        ],
      ),
       new Divider(color: Colors.grey,),
      ListTile(
                    title: Text('Clothing & Apparel'),
                    onTap: (){},
                  ),
                   new Divider(color: Colors.grey,),
                   ListTile(
                    title: Text('Home, Garden & Kitchen'),
                    onTap: (){},
                  ),
                   new Divider(color: Colors.grey,),
                   ListTile(
                    title: Text('Health & Beauty'),
                    onTap: (){},
                  ),
                   new Divider(color: Colors.grey,),
                   ListTile(
                    title: Text('Jewelry & Watches'),
                    onTap: (){},
                  ),
                   new Divider(color: Colors.grey,),
          ExpansionTile(
            backgroundColor: Colors.grey[200],
            title: Text('Computers & Technologies'),
            trailing: Icon(Icons.add),
            children: <Widget>[
              ExpansionTile(
                title: Text('Computer & Technologies'),
                trailing: Icon(Icons.add),
                children: <Widget>[
                  ListTile(
                    title: Text('DJI Phantom'),
                    onTap: (){},
                  ),

                ],
              ),
              ListTile(
                title: Text('Headphone'),
                onTap: (){},
              ),
            ],
         ),
          new Divider(color: Colors.grey,),
          ListTile(
                title: Text('Babies & Moms'),
                onTap: (){},
              ),
               new Divider(color: Colors.grey,),
               ListTile(
                title: Text('Sport & Outdoor'),
                onTap: (){},
              ),
               new Divider(color: Colors.grey,),
                      ExpansionTile(
            backgroundColor: Colors.grey[200],
            title: Text('Phones & Accessories'),
            trailing: Icon(Icons.add),
            children: <Widget>[
              ExpansionTile(
                title: Text('Smart phones'),
                trailing: Icon(Icons.add),
                children: <Widget>[
                  ListTile(
                    title: Text('IOS Phones'),
                    onTap: (){},
                  ),

                ],
              ),
              ListTile(
                title: Text('Galaxy note 4'),
                onTap: (){},
              ),
            ],
         ),
          new Divider(color: Colors.grey,),
             ListTile(
                title: Text('Books & Office'),
                onTap: (){},
              ),
               new Divider(color: Colors.grey,),
                  ListTile(
                title: Text('Cars & Motorcycles'),
                onTap: (){},
              ),


        ]
      ),
    );
  }
}