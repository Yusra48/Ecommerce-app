import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<NotificationData> notifications = [
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2016/11/14/04/36/boy-1822614_640.jpg',
        title: 'George',
        description: 'Get 20% off on selected items. Limited time offer.',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2016/05/17/22/16/baby-1399332_640.jpg',
        title: 'Sana',
        description: 'Avail Best discounts after using my code',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2016/08/25/01/29/google-1618520_640.jpg',
        title: 'Google',
        description:
            'Secure your Passwords and account by following these steps',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2023/04/17/19/27/plum-blossom-7933169_1280.jpg',
        title: 'Outfitters',
        description: 'Get 50% off on womens day',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2016/11/14/04/36/boy-1822614_640.jpg',
        title: 'George',
        description: 'Get 20% off on selected items. Limited time offer',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2024/02/26/19/39/monochrome-image-8598798_640.jpg',
        title: 'Ashley',
        description: 'Subscribe to our page and get updates on latest sales',
      ),
      NotificationData(
        iconUrl:
            'https://cdn.pixabay.com/photo/2018/01/11/23/16/woman-3077180_1280.jpg',
        title: 'Gigi',
        description: 'Connect with us and be a part of our family',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
        title: const Text('Notifications'),
      ),
      body: ListView(
        children: notifications.map((notification) {
          return NotificationCard(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(notification.iconUrl),
            ),
            title: notification.title,
            description: notification.description,
          );
        }).toList(),
      ),
    );
  }
}

class NotificationCard extends StatefulWidget {
  final Widget icon;
  final String title;
  final String description;

  const NotificationCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: widget.icon,
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Text(widget.description),
          ],
        ),
      ),
    );
  }
}

class NotificationData {
  final String iconUrl;
  final String title;
  final String description;

  NotificationData({
    required this.iconUrl,
    required this.title,
    required this.description,
  });
}
