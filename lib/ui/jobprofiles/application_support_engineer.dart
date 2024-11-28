import 'package:flutter/material.dart';

import '../get_started.dart';

class ApplicationSupportEngineerPage extends StatelessWidget {
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
        title: Text('Application Support Engineer'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Application Support Engineer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'An Application Support Engineer is responsible for managing and supporting the software applications used by an organization. They ensure that applications run smoothly, troubleshoot issues, and provide technical support to users. The role includes resolving application errors, coordinating with development teams, and maintaining system availability and performance.',
            ),
            _buildContentText(
              'Application Support Engineers often act as the first line of support for application-related issues, ensuring minimal downtime and optimal performance of business-critical applications. The role may also involve updating software, applying patches, and assisting in the testing of new application releases.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'An Application Support Engineer must have strong troubleshooting and problem-solving skills, a deep understanding of software applications, and the ability to communicate effectively with both technical and non-technical stakeholders. The role also requires expertise in monitoring tools and scripting languages.',
            ),
            _buildContentText(
              'Based on our research, the following core skills are required for an Application Support Engineer:',
            ),
            _buildBulletPoint('Strong troubleshooting and debugging skills'),
            _buildBulletPoint('Proficiency in monitoring and diagnostic tools (e.g., Splunk, New Relic)'),
            _buildBulletPoint('Knowledge of databases and query languages (SQL, PL/SQL)'),
            _buildBulletPoint('Experience with operating systems (Linux, Windows, Unix)'),
            _buildBulletPoint('Proficiency in scripting languages (Bash, PowerShell, Python)'),
            _buildBulletPoint('Familiarity with version control systems (Git, SVN)'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, or a related field is typically required. Candidates should have a strong foundation in software development, system administration, and application management. Knowledge of software testing methodologies and ITIL (Information Technology Infrastructure Library) principles is also a plus.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The main responsibility of an Application Support Engineer is to ensure the continuous operation of applications and provide technical support to users. This includes monitoring system performance, resolving application issues, and collaborating with development teams to implement fixes or improvements.',
            ),
            _buildBulletPoint('Providing technical support to users and resolving application-related issues'),
            _buildBulletPoint('Monitoring application performance and availability'),
            _buildBulletPoint('Performing root cause analysis of application issues'),
            _buildBulletPoint('Coordinating with developers to resolve software bugs and implement patches'),
            _buildBulletPoint('Creating and maintaining documentation for application issues and fixes'),
            _buildBulletPoint('Assisting in the testing and deployment of new software releases'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the entry-level Application Support Engineer salary in India ranges from Rs. 3,50,000 to Rs. 6,00,000 per annum. Mid-level professionals can earn between Rs. 6,00,000 and Rs. 12,00,000, while senior-level engineers can earn upwards of Rs. 15,00,000 annually.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Application Support Engineer Role'),
            _buildBulletPoint('TCS (Tata Consultancy Services)'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('HCL Technologies'),
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
