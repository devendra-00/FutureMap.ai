import 'package:flutter/material.dart';

import '../get_started.dart';

class CustomerServiceExecutivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GetStarted()),
                );
              },
              icon: Icon(Icons.home))
        ],
        title: Text('Customer Service Executive'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Customer Service Executive',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Customer Service Executive (CSE) is responsible for assisting customers by providing product/services information, answering questions, and resolving customer complaints or concerns. The role requires a customer-first attitude, empathy, patience, and effective communication skills to provide high-quality service to ensure customer satisfaction and loyalty.',
            ),
            _buildContentText(
              'Customer Service Executives are typically the first point of contact for customers via phone, email, live chat, or in person. They are responsible for handling customer inquiries, processing orders, addressing issues, and ensuring that the customer experience is positive and efficient.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Customer Service Executive should have strong communication skills, a good understanding of the company’s products or services, and the ability to remain calm under pressure. Problem-solving, active listening, and multitasking are key to succeeding in this role.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are required for a Customer Service Executive:',
            ),
            _buildBulletPoint('Excellent verbal and written communication skills'),
            _buildBulletPoint('Strong interpersonal and active listening skills'),
            _buildBulletPoint('Ability to remain calm and professional under pressure'),
            _buildBulletPoint('Problem-solving and conflict resolution skills'),
            _buildBulletPoint('Knowledge of customer service software, databases, and tools (CRM systems)'),
            _buildBulletPoint('Patience, empathy, and a customer-first attitude'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A minimum of a high school diploma is generally required for a Customer Service Executive role. A Bachelor’s degree in Business Administration or a related field may be preferred by some employers. In addition, prior experience in customer service or a related field is often considered an asset.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Customer Service Executive is to provide support to customers, address inquiries, and resolve issues efficiently. This includes responding to questions, processing orders, offering product recommendations, and maintaining customer satisfaction.',
            ),
            _buildBulletPoint('Answering customer inquiries via phone, email, or live chat'),
            _buildBulletPoint('Providing information about products, services, and policies'),
            _buildBulletPoint('Resolving customer complaints or concerns in a timely and professional manner'),
            _buildBulletPoint('Processing orders, returns, and exchanges as per company policy'),
            _buildBulletPoint('Maintaining customer records and updating account information'),
            _buildBulletPoint('Providing feedback and suggestions to management to improve customer service'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the average salary for a Customer Service Executive in India ranges from Rs. 2,50,000 to Rs. 5,00,000 per annum for entry-level roles. Experienced customer service professionals may earn up to Rs. 8,00,000 per annum, depending on the industry and company.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Customer Service Executive Role'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Flipkart'),
            _buildBulletPoint('HDFC Bank'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Concentrix'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Sitel'),
            _buildBulletPoint('Tech Mahindra'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildContentText(String content) {
    return Text(
      content,
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• ', style: TextStyle(fontSize: 16)),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}