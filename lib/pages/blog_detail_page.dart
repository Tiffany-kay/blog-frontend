import 'package:flutter/material.dart';
import '../models/blog.dart';
import '../services/api_service.dart';

class BlogDetailPage extends StatefulWidget {
  final int blogId;

  BlogDetailPage({required this.blogId});

  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  final ApiService apiService = ApiService();
  late Future<Blog> _blog;

  @override
  void initState() {
    super.initState();
    _blog = apiService.fetchBlogDetail(widget.blogId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blog Detail')),
      body: FutureBuilder<Blog>(
        future: _blog,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Colors.amber[700]));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}', style: TextStyle(color: Colors.white70)));
          } else if (!snapshot.hasData) {
            return Center(child: Text('Blog not found.', style: TextStyle(color: Colors.white70)));
          } else {
            final blog = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.title,
                    style: Theme.of(context).textTheme.titleLarge, // Updated
                  ),
                  SizedBox(height: 10),
                  Text(
                    blog.description,
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        blog.content,
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
