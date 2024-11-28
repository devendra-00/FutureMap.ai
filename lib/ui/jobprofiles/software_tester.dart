import 'package:flutter/material.dart';

import '../get_started.dart';

class SoftwareTesterPage extends StatelessWidget {
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
        title: Text('Software Tester'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Software Tester',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Software Tester is responsible for ensuring that software applications and systems are free from defects and function as expected. Their role includes designing test plans, writing test cases, performing manual and automated testing, and identifying and reporting bugs or issues in the software. Software testers ensure the quality and functionality of applications by detecting errors, inconsistencies, and gaps before the software is released to end users.',
            ),
            _buildContentText(
              'Testers work closely with developers, business analysts, and project managers to ensure that the product meets the required standards and specifications. They perform different types of testing including unit testing, integration testing, system testing, regression testing, and performance testing.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Software Tester should possess excellent attention to detail, problem-solving skills, and the ability to work under pressure. They must be familiar with different types of testing methodologies, such as manual and automated testing, and must be able to identify and document issues clearly.',
            ),
            _buildContentText(
              'The following core skills are required for a Software Tester:',
            ),
            _buildBulletPoint('Knowledge of software testing methodologies (manual and automated)'),
            _buildBulletPoint('Experience with testing tools and frameworks (e.g., Selenium, JUnit, TestNG, QTP, LoadRunner)'),
            _buildBulletPoint('Proficiency in bug tracking tools (e.g., JIRA, Bugzilla, TestRail)'),
            _buildBulletPoint('Strong analytical and problem-solving skills'),
            _buildBulletPoint('Familiarity with programming languages (e.g., Java, Python, C++)'),
            _buildBulletPoint('Understanding of databases and SQL for performing data validation'),
            _buildBulletPoint('Knowledge of version control systems like Git'),
            _buildBulletPoint('Strong communication skills to report defects and provide feedback'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, or related fields is typically required. However, certifications in software testing (e.g., ISTQB - International Software Testing Qualifications Board) can provide a competitive edge for aspiring testers.',
            ),
            _buildContentText(
              'Some companies may accept candidates with relevant experience or an engineering degree in related disciplines.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Software Tester is to ensure that the software functions as expected and is free from defects. This involves testing different aspects of the software, writing test scripts, and collaborating with the development team to fix issues.',
            ),
            _buildBulletPoint('Design and execute test cases to verify functionality and features of the software'),
            _buildBulletPoint('Perform manual and automated testing to identify defects'),
            _buildBulletPoint('Work with developers to report issues and assist in debugging'),
            _buildBulletPoint('Track and document test results, report issues, and follow up on resolution'),
            _buildBulletPoint('Participate in code reviews and ensure software quality standards are met'),
            _buildBulletPoint('Perform regression testing to ensure new changes do not affect existing functionality'),
            _buildBulletPoint('Ensure that the software meets the requirements set by business analysts and project managers'),
            _buildBulletPoint('Document test plans, test cases, and test results for future reference'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'In India, a Software Tester’s salary can vary depending on experience and expertise. Entry-level Software Testers typically earn between Rs. 3,00,000 and Rs. 5,00,000 per year. Mid-level testers with 3-5 years of experience earn between Rs. 5,00,000 and Rs. 9,00,000 annually. Senior Testers and Test Leads with more experience can earn upwards of Rs. 10,00,000 or more.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Software Tester Roles'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Qualys'),
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
