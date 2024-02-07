import 'package:flutter/material.dart';

import 'custom_circular_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          CircularButton(onTap: () {}, icon: Icons.menu),
          const Expanded(
              child: Center(
            child: Column(
              children: [
                Text("Location",
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.redAccent,
                      size: 16,
                    ),
                    Text(
                      "172 Grand St, NY",
                      style: TextStyle(fontSize: 16),
                    ),
                    RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 12,
                        ))
                  ],
                ),
              ],
            ),
          )),
          CircularButton(onTap: () {}, icon: Icons.notifications_none_outlined)
        ],
      ),
    );
  }
}
