import 'package:flutter/material.dart';
import 'package:personal_assistant/screens/chat.dart';

class GeminiDetails extends StatelessWidget {
  const GeminiDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Gemini AI'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image placeholder
            Center(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200], // Placeholder color
                  image: const DecorationImage(
                    image: AssetImage('assets/ai.png'),
                    // Replace with actual image asset path
                    fit: BoxFit.contain, // Adjust image fit as needed
                  ),
                ),
                 // Loading indicator
              ),
            ),
            const SizedBox(height: 20.0),
            // Spacing

            // Title with underline
            Text(
              'What is Gemini AI?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const Divider(color: Colors.deepPurple, thickness: 1.0),
            // Decorative underline

            const SizedBox(height: 10.0),
            // Spacing

            // Descriptive text with paragraph spacing
            Text(
              'Gemini AI is a powerful and versatile large language model (LLM) developed by Google AI. It is trained on a massive dataset of text and code, allowing it to generate text, translate languages, write different kinds of creative content, and answer your questions in an informative way.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign
                  .justify, // Justify alignment for better readability
            ),

            const SizedBox(height: 20.0),
            // Spacing

            // Capabilities section with title and list
            Text(
              'Capabilities of Gemini AI:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10.0),
            // Spacing
            Text(
              '1. Text Generation: Create different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '2. Machine Translation: Translate languages accurately, preserving the meaning and context.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '3. Question Answering: Get informative answers to your questions in a comprehensive and informative way.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '4. And More: Gemini AI is constantly evolving and learning new capabilities.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 20.0),
            // Spacing

            // Benefits section with title and list
            Text(
              'Benefits of Using Gemini AI:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10.0),
            // Spacing
            Text(
              '1. Improved Efficiency: Automate repetitive tasks and generate creative content quickly.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '2. Enhanced Creativity: Spark new ideas and explore different creative possibilities.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '3. Increased Productivity: Focus on higher-level tasks while Gemini AI handles the heavy lifting.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '4. Knowledge Exploration: Gain insights and information from a vast pool of knowledge.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 20.0),
            // Spacing

            // How to Use section with title and icon placeholder
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.play_arrow_rounded, // Play button icon placeholder
                  color: Colors.deepPurple,
                  size: 30.0,
                ),
                const SizedBox(width: 10.0), // Spacing
                Expanded(
                  child: Text(
                    'How to Use Gemini AI:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            // Spacing
            Text(
              '1. Provide a clear and concise prompt describing what you want Gemini AI to do.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '2. Gemini AI will generate text, translate languages, answer your questions, or complete your requests based on your prompt.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5.0),
            // Spacing
            Text(
              '3. You can refine your prompt or ask follow-up questions for more tailored results.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 20.0),
            // Spacing

            // Call to action with button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(
                      builder: (context)=>ChatScreen()
                  ));
                },
                child: const Text('Try Gemini AI Now',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}