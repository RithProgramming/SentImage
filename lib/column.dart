import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  final VoidCallback onClickedDelete;
  final String name;
  final String url;
  const ColumnView(
      {super.key,
      required this.onClickedDelete,
      required this.name,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 153, 153, 153),
      child: Column(
        children: [
          SizedBox(
            height: 130,
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                onPressed: onClickedDelete,
                icon: const Icon(
                  Icons.delete,
                  size: 25,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
