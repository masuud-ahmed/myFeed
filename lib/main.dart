import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My Feed'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // Post header
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, size: 30, color: Colors.grey[600]),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Masud Ahmed', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('5 mins ago', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          // Post image
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey[200],
            child: Icon(Icons.image, size: 100, color: Colors.grey[400]),
          ),
          // Post actions
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up_outlined),
                    SizedBox(width: 4),
                    Text('Like'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    SizedBox(width: 4),
                    Text('Comment'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(width: 4),
                    Text('Share'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}