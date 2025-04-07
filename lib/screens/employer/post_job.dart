import 'package:flutter/material.dart';
import 'package:talent_bridge/widgets/animated_button.dart';


class PostJobScreen extends StatefulWidget {
  const PostJobScreen({super.key});

  @override
  State<PostJobScreen> createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post New Job')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Job Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _descController,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Job Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              AnimatedButton(
                text: 'Post Job',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                },
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}