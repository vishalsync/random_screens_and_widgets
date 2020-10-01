import 'package:flutter/material.dart';

class AppSettingScreen extends StatelessWidget {
  static const String routeName = 'app_setting_screen';


  Widget __headerNameBuilder(String headerTitle) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(headerTitle, style: TextStyle(color: Colors.grey, fontSize: 18.0),),
    );

  }//End of __listTileBuilder method


  Widget __listTileBuilder({@required IconData icon, @required String title}) {

    return ListTile(
      leading: CircleAvatar(child: Icon(icon, color: Colors.white,), backgroundColor: Colors.black,),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );

  }//End of __listTileBuilder method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            //Action to be performed on press the button
          },
        ),
        title: Text('App Settings', style: TextStyle(color: Colors.black),),
      ),
      body: ListView(
        children: [
          __headerNameBuilder('GENERAL'),
        
          __listTileBuilder(icon: Icons.notifications, title: 'Notifications'),
          Divider(),
          __listTileBuilder(icon: Icons.assignment, title: 'Agreements'),
          Divider(),
          __listTileBuilder(icon: Icons.check, title: 'Releases from confidentiality'),
          Divider(),
          __listTileBuilder(icon: Icons.lock, title: 'Password'),
           Divider(),
          __listTileBuilder(icon: Icons.menu, title: 'Pin'), 
          Divider(),
          __listTileBuilder(icon: Icons.exit_to_app, title: 'Logout'),
         
          __headerNameBuilder('FEEDBACK'),
          __listTileBuilder(icon: Icons.rss_feed, title: 'App feedback'),
          Divider(),
          __listTileBuilder(icon: Icons.bug_report, title: 'Bug repot'),
          Divider(),

          __headerNameBuilder('Legal'),
          __listTileBuilder(icon: Icons.notifications, title: 'Privacy'),
          Divider(),
          __listTileBuilder(icon: Icons.assignment, title: 'Imprint'),
          Divider(),
        ],
      ),
    );
  }
}