import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.withOpacity(0.2)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "Search Food, groceries, drink, etc.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                maxLines: 1,overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            VerticalDivider(
              width: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.filter_alt_outlined)
          ],
        ),
      ),
    );
  }
}
