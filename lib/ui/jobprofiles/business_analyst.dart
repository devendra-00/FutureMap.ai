import 'package:flutter/material.dart';

import '../get_started.dart';

class BusinessAnalystPage extends StatelessWidget {
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
        title: Text('Business Analyst'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Business Analyst',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Business Analyst (BA) acts as a bridge between stakeholders and IT teams, gathering and analyzing business requirements to develop data-driven solutions that improve business processes and decision-making. The BA is responsible for identifying business needs, documenting requirements, and ensuring that technology solutions align with organizational goals.',
            ),
            _buildContentText(
              'The role requires excellent communication, analytical, and problem-solving skills. Business Analysts work across various industries to implement software solutions, improve processes, and drive change management initiatives, helping organizations stay competitive in the marketplace.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Business Analyst must possess strong analytical skills, along with the ability to understand and translate business requirements into technical solutions. They should be familiar with data modeling, process mapping, and software development methodologies.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are necessary for a Business Analyst:',
            ),
            _buildBulletPoint('Strong analytical and problem-solving skills'),
            _buildBulletPoint('Experience with business process modeling and mapping (BPMN, flowcharts)'),
            _buildBulletPoint('Proficiency in data analysis and reporting tools (Excel, SQL, Power BI, Tableau)'),
            _buildBulletPoint('Experience with requirements gathering and documentation techniques (user stories, use cases)'),
            _buildBulletPoint('Familiarity with Agile and Waterfall methodologies'),
            _buildBulletPoint('Good communication and stakeholder management skills'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Business Administration, Information Technology, Computer Science, or a related field is typically required. A Master’s degree or certification in Business Analysis (e.g., CBAP - Certified Business Analysis Professional) is often preferred. Knowledge of business analysis frameworks, methodologies, and tools is essential.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Business Analyst is to analyze and document business needs, working with stakeholders to define solutions. They collaborate with IT teams to ensure that business requirements are met, facilitate project planning, and contribute to the testing and implementation of solutions.',
            ),
            _buildBulletPoint('Gathering and analyzing business requirements from stakeholders'),
            _buildBulletPoint('Developing business cases and project documentation'),
            _buildBulletPoint('Facilitating workshops and meetings with business stakeholders to define needs'),
            _buildBulletPoint('Creating process flow diagrams, use cases, and user stories'),
            _buildBulletPoint('Coordinating with development teams to ensure solutions meet business needs'),
            _buildBulletPoint('Assisting in testing and validating solutions to ensure they meet business requirements'),
            _buildBulletPoint('Monitoring and evaluating project progress and outcomes'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the average salary for a Business Analyst in India varies based on experience. Entry-level Business Analysts earn around Rs. 4,00,000 to Rs. 7,00,000 per annum. Mid-level analysts can earn Rs. 8,00,000 to Rs. 15,00,000 per annum, while senior Business Analysts can earn upwards of Rs. 20,00,000 annually.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Business Analyst Role'),
            _buildBulletPoint('TCS (Tata Consultancy Services)'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('Deloitte'),
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
