import 'package:flutter/material.dart';

import '../get_started.dart';

class TechnicalWriterPage extends StatelessWidget {
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
        title: Text('Technical Writer'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Technical Writer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Technical Writer is responsible for creating clear, concise, and comprehensive documentation that helps users understand and use a product or service. This includes user manuals, installation guides, API documentation, knowledge base articles, release notes, and other types of technical content. The role involves working closely with developers, engineers, product managers, and other stakeholders to gather the necessary information and ensure the documentation is accurate and user-friendly.',
            ),
            _buildContentText(
              'Technical Writers are essential in industries where complex products or systems need to be explained in simple, accessible terms for users, technical staff, or stakeholders. They translate technical jargon into easy-to-understand content for different audiences, ensuring the documents are both informative and engaging.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'To succeed as a Technical Writer, one must have strong writing and communication skills, attention to detail, and an ability to understand complex technical concepts. In addition to writing, a Technical Writer should have experience with documentation tools and an understanding of the subject matter being documented.',
            ),
            _buildContentText(
              'The following skills are essential for a Technical Writer:',
            ),
            _buildBulletPoint('Strong writing, editing, and proofreading skills'),
            _buildBulletPoint('Ability to simplify complex technical concepts'),
            _buildBulletPoint('Experience with documentation tools (e.g., Microsoft Word, Adobe FrameMaker, MadCap Flare, Confluence)'),
            _buildBulletPoint('Knowledge of markup languages (e.g., HTML, Markdown, XML)'),
            _buildBulletPoint('Understanding of software development processes and tools'),
            _buildBulletPoint('Ability to work with engineers, developers, and subject matter experts to gather information'),
            _buildBulletPoint('Excellent research skills'),
            _buildBulletPoint('Attention to detail and strong organizational skills'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in English, Communications, Journalism, or a related field is typically required for a Technical Writer role. However, candidates with a background in Computer Science, Engineering, or other technical fields, along with writing skills, may also be considered.',
            ),
            _buildContentText(
              'Technical Writing certifications or training, such as those offered by the Society for Technical Communication (STC), can be beneficial for career advancement.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Technical Writer is to produce clear and user-friendly documentation. This involves working with various stakeholders to gather information, creating content, and ensuring that all technical documentation is accurate and accessible.',
            ),
            _buildBulletPoint('Create user manuals, installation guides, API documentation, and other technical content'),
            _buildBulletPoint('Work closely with developers and engineers to understand the product and its features'),
            _buildBulletPoint('Translate complex technical information into simple, clear language'),
            _buildBulletPoint('Ensure all documentation is up to date and reflects the latest product changes'),
            _buildBulletPoint('Test documentation to ensure its usability and clarity for end-users'),
            _buildBulletPoint('Review and edit content created by others to ensure consistency and quality'),
            _buildBulletPoint('Maintain a library of standard documentation templates and style guides'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'In India, the salary for a Technical Writer can vary based on experience and location. Entry-level Technical Writers can expect to earn between Rs. 4,00,000 and Rs. 6,00,000 per year. With 3-5 years of experience, salaries can range between Rs. 6,00,000 and Rs. 10,00,000 annually. Senior Technical Writers or those in leadership roles may earn upwards of Rs. 12,00,000 per year.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Technical Writer Roles'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Adobe'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('IBM'),
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
