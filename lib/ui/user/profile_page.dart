import 'package:flutter/material.dart';
import 'package:latihan/ui/widget/app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: 'Profile'),
      body: body(context),
    );
  }
}

ListTile listTile(
  String title,
  IconData icon, {
  Color color = Colors.black,
}) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 14,
    ),
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Container body(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(30),
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(children: [
          SizedBox(
              width: 130,
              height: 130,
              child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: AssetImage('assets/images/unnamed.jpg'))),
          Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionButton.small(
                  backgroundColor: Colors.teal,
                  heroTag: const Key('home'),
                  onPressed: () {},
                  child: const Icon(Icons.edit, color: Colors.white)))
        ]),
        const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Rahmat Supriansyah',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        Text(
          'Mahasiswa Institut Digital Ekonomi',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.grey.shade500),
        ),
        const SizedBox(
          height: 30,
        ),
        listTile('Mata kuliah favorit', Icons.star_border_outlined),
        const Divider(),
        listTile('Mata kuliah simpanan', Icons.bookmark_outline),
        const Divider(),
        listTile('Jadwal mata kuliah', Icons.calendar_today_outlined),
        const Divider(),
        listTile('Tambah jadwal kegiatan kuliah', Icons.alarm_add_outlined),
        const Divider(),
        listTile('Logout', Icons.logout, color: Colors.red),
      ],
    ),
  );
}
