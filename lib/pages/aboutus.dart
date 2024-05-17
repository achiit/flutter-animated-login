import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: FadeInUp(
          duration: const Duration(milliseconds: 800),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introducing Samantha: Your Digital Companion for Mental Wellbeing',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'SAMANTHA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'APRIL 2024',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20.0),
              Text(
                "In today's fast-paced world, the journey towards mental wellness can often seem daunting. Understanding this, we are thrilled to introduce Samantha, a groundbreaking AI tool designed to provide accessible and unbiased support for anyone taking their first steps toward mental well-being.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "1. Who is Samantha for?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10.0),
              Text(
                "Samantha is here for anyone who's looking to take that first step towards better mental health. Whether you're dealing with anxiety, feeling down, or just need someone to talk to, Samantha is ready to listen and provide personalized guidance.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "2. What is the purpose of Samantha?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10.0),
              Text(
                "Our mission with Samantha is straightforward: to make good mental health accessible to everyone, everywhere.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "We believe that emotional well-being should not be a privilege, but a fundamental right.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "Having access to good quality therapist’s guidance is a needle in the haystack situation. By harnessing the power of AI, Samantha democratises access to mental health resources, ensuring that quality guidance is just a few clicks away for anyone who needs it.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "3. What sets Samantha apart?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10.0),
              Text(
                "Samantha's unique selling proposition lies in its foundation—built on the insights gleaned from hundreds of therapy books, mental health forums, and research journals. This extensive knowledge base enables Samantha to provide well-rounded and informed responses.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "Unlike human counselors who may unknowingly bring their own experiences and views into the conversation, Samantha operates entirely free of such influences. This absence of bias is crucial, ensuring that every interaction is tailored exclusively to your needs and aspirations, without any external prejudice.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "The model is trained to offer advice based purely on the principles of cognitive behavioural therapy and other proven therapeutic techniques, ensuring every user receives support that is both reliable and unbiased.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "4. How Samantha Transforms Mental Health Care",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10.0),
              Text(
                "Samantha makes mental health support accessible to everyone, no matter where you are or what your situation is. As an AI, she's available 24/7, providing a safe and confidential space for you to open up. And because she's unbiased, Samantha can offer a unique perspective that complements traditional therapy, empowering you to take charge of your mental wellbeing.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "Samantha isn't meant to replace professional therapy – instead, she's a complementary resource to help you on your journey towards wellbeing. In a world that often overlooks mental health, Samantha is a beacon of hope. By harnessing the power of AI, we're breaking down the barriers and paving the way for a more inclusive and empowered future.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.0),
              Text(
                "So why not give Samantha a try? Your well-being deserves the very best support.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
