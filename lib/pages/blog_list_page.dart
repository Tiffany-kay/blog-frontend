import 'package:flutter/material.dart';
import '../models/blog.dart';
import '../services/api_service.dart';
import 'blog_detail_page.dart';
import '../widgets/blog_card.dart';

class BlogListPage extends StatefulWidget {
  @override
  _BlogListPageState createState() => _BlogListPageState();
}

class _BlogListPageState extends State<BlogListPage> {
  final ApiService apiService = ApiService();
  late Future<List<Blog>> _blogs;

  @override
  void initState() {
    super.initState();
    _blogs = apiService.fetchBlogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blogs')),
      body: FutureBuilder<List<Blog>>(
        future: _blogs,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Colors.amber[700]));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}', style: TextStyle(color: Colors.white70)));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No blogs found.', style: TextStyle(color: Colors.white70)));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final blog = snapshot.data![index];
                return BlogCard(
                  blog: blog,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlogDetailPage(blogId: blog.id),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
