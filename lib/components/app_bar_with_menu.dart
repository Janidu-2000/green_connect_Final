import 'package:flutter/material.dart';

class AppBarWithMenu extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int? notifications;

  const AppBarWithMenu({super.key, required this.title, this.notifications});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Stack(
          children: [
            const Icon(
              Icons.notifications,
              size: 30,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  notifications != null ? notifications.toString() : "0",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}
