// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class List extends StatelessWidget {
  List({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Container(
        height: MediaQuery.of(context).size.height * 1.2,
        child: Column(
          // shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1651601787600-40ad979813ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                ),
              ),
              title: Text(
                'Liam',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/S0U5ECzYUSu.png?_nc_eui2=AeEadX6Yil_Qnldyle-u5p3RqfpKmA4GtxSp-kqYDga3FBHv4XZUPVkbxRoSzSmc3s59Ar3Ssnm7UwIkthes79-4',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Friends',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/y5/r/PrjLkDYpYbH.png?_nc_eui2=AeFXqV2Q1jMneNVFOIWDlaz2Z3xAUM5_bWpnfEBQzn9taq2C5ykFR4LmQoTEkFg7NKiwtLmyBRrBKLIVn6ryay3u',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Groups',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/yU/r/D2y-jJ2C_hO.png?_nc_eui2=AeHxxvyXMbldWXFd2kw8xi9W-vsl1K9A-9v6-yXUr0D729d5IxbA1zOGjJpZ_u8u9EA7rqQnlVTkjUdQADVCd002',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Marketplace',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/y5/r/duk32h44Y31.png?_nc_eui2=AeGEwENmAmTAVXM3ad8jQflQ2NRDTXGHJ53Y1ENNcYcnnRs435Mm6XGhMlTL_6ZrkvzqV5eL843efPFYdLeFR5d8',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: const Text(
                'Watch',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0XFF1876F2),
                    radius: 4,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '9 new videos',
                    style: TextStyle(color: Color(0XFF1876F2), fontSize: 11),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/he-BkogidIc.png?_nc_eui2=AeH8aIqYvXQZsZ1AWpAi_sASa4YXxTz5jX9rhhfFPPmNfxyOSmgFEBBIKbop4lV_wBq_D4M3I_U6VVCmvLoPnd6O',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Memories',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/lVijPkTeN-r.png?_nc_eui2=AeHW6wEDOLa2qUG-M3qrzOcq-5kYScafj0T7mRhJxp-PRBS6EnSJvevTinCPNBnjCKhT7eVsN4_qH50v_RiiSLVV',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Saved',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/yH/r/kyCAf2jbZvF.png?_nc_eui2=AeG1En6BvaxsMRMlMS8y7zd4tEPFOzh_t-u0Q8U7OH-368EZCjWhnhVzU9gAkzKsPYcEBdLn1sUce9syX87P8oEj',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Pages',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/yu/r/eXC82ZeepQ7.png?_nc_eui2=AeE2Sg60Ov153ZJC1YIYmuvjG6-rVcdLeA4br6tVx0t4Dh_ielY0mYAdJTqt8Mj5zoJSr41qDLQ37b7_oIUb4Igj',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Events',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                child: Icon(Icons.arrow_drop_down, color: Colors.black),
                backgroundColor: Color(0XFFE4E6EB),
              ),
              title: Text(
                'See more',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Color(0XFFCED0D4),
              indent: 10,
              // endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Text(
                'Your Shortcuts',
                style: TextStyle(
                    color: Color(0XFF6D6F73),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG9nb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Benz',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG9nb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                ),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Benz',
                style: TextStyle(
                    color: Color(0XFF111111),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
