import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final apiKey = "AIzaSyCDvkjOcfrLevRqppl1umRJfszVPdNpxh8";
  final _userInputController = TextEditingController();
  String _responseText = "";
  bool _isLoading = false;

  Future<void> _generateText() async {
    setState(() {
      _isLoading = true; // Show loading indicator
    });
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text(_userInputController.text)];
    final response = await model.generateContent(content);
    setState(() {
      _responseText = response.text!;
      _isLoading = false; // Hide loading indicator
    });
    _userInputController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Generator with Gemini'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Expanded scrollable response area
            Expanded(
              child: SingleChildScrollView(
                reverse: false, // Display new messages at the bottom
                padding: EdgeInsets.all(16.0),
                child: _responseText.isEmpty
                    ? Center(
                        child: Text(
                          'Ask me anything!',
                          style: TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      )
                    : _responseText.contains('\n\n')
                        ? _buildFormattedResponse()
                        : Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.grey[200],
                            ),
                            child: SelectableText(
                              _responseText,
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
              ),
            ),
            // Input and send button row
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _userInputController,
                      enabled: !_isLoading, // Disable input while loading
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: 'Enter prompt...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                        suffixIcon: IconButton(
                          onPressed: _isLoading ? null : _generateText,
                          // Disable button while loading
                          icon: _isLoading
                              ? CircularProgressIndicator() // Loading indicator
                              : const Icon(
                                  Icons.send,
                                  size: 30,
                                  color: Colors.deepPurple,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildFormattedResponse() {
    final parts = _responseText.split('\n\n'); // Split by double newline
    final List<Widget> content = [];
    for (var part in parts) {
      final heading = part.split('\n')[0]; // First line as heading
      final items = part.split('\n').skip(1).map((item) => item.trimLeft()).toList(); // Remove leading whitespace

      content.add(Text(
        heading,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
      content.add(ListView.builder(
        shrinkWrap: true, // Prevent list view from expanding
        physics: NeverScrollableScrollPhysics(), // Disable scrolling
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items.elementAt(index);
          return Text('  - $item\n'); // Use indentation and newline
        },
      ));
    }
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content,
      ),
    );
  }
}
