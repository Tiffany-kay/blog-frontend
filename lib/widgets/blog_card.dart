import 'package:flutter/material.dart';
import '../models/blog.dart';

class BlogCard extends StatefulWidget {
  final Blog blog;
  final VoidCallback onTap;

  BlogCard({required this.blog, required this.onTap});

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => setState(() => _isHovered = true),
      onTapUp: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.grey[800] : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [BoxShadow(color: Colors.amber[700]!, blurRadius: 10, offset: Offset(0, 4))]
              : [],
        ),
        child: ListTile(
          title: Text(
            widget.blog.title,
            style: Theme.of(context).textTheme.titleLarge, // Updated
          ),
          subtitle: Text(
            widget.blog.description,
            style: TextStyle(color: Colors.white70),
          ),
          trailing: Icon(Icons.arrow_forward, color: Colors.amber[700]),
        ),
      ),
    );
  }
}
