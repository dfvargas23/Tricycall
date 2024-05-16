import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: const Text(
            'Notifications',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfff0A72BF), Color(0xfff359490)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildSectionHeader('New'),
          _buildNotificationItem(
              'Arrived', 'You have arrived at your destination',
              unread: true),
          _buildSectionHeader('Today'),
          _buildNotificationItem('Pickup', 'You have been picked up'),
          _buildNotificationItem(
              'Confirmed', 'The driver confirmed your request'),
          _buildNotificationItem('Pending Confirmation',
              'Your booking request is waiting to be confirmed'),
          _buildSectionHeader('Earlier'),
          _buildNotificationItem(
              'Arrived', 'You have arrived at your destination'),
          _buildNotificationItem('Pickup', 'You have been picked up'),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      color: Colors.white,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }

  Widget _buildNotificationItem(String title, String description,
      {bool unread = false}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
        ),
      ),
      tileColor: unread ? Colors.green[50] : null,
      trailing: _buildOptionsPopupMenu(),
    );
  }

  Widget _buildOptionsPopupMenu() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text(
              'Mark as Read',
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 15),
            ),
            value: 'mark_as_read',
          ),
          PopupMenuItem(
            child: Text(
              'Mark as Unread',
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 15),
            ),
            value: 'mark_as_unread',
          ),
          PopupMenuItem(
            child: Text(
              'Remove',
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 15),
            ),
            value: 'remove',
          ),
          PopupMenuItem(
            child: Text(
              'Report',
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 15),
            ),
            value: 'report',
          ),
        ];
      },
      onSelected: (String value) {
        switch (value) {
          case 'mark_as_read':
            // Functionality to mark as read
            break;
          case 'mark_as_unread':
            // Functionality to mark as unread
            break;
          case 'remove':
            // Functionality to remove notification
            break;
          case 'report':
            // Functionality to report notification
            break;
        }
      },
      icon: Icon(Icons.more_vert),
    );
  }
}
