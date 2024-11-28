import 'package:flutter/material.dart';

import '../get_started.dart';

class ApiIntegrationSpecialistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('API Integration Specialist'),
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'API Integration Specialist',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'An API Integration Specialist is responsible for integrating third-party APIs and ensuring seamless data exchange between systems. They work closely with other teams to integrate APIs with software applications and ensure the performance and security of API integrations. The role often requires troubleshooting and enhancing API services to improve business functionality and user experience.',
            ),
            _buildContentText(
              'Key responsibilities include designing, implementing, and maintaining APIs, as well as ensuring optimal data flow between systems. They are experts in understanding the API lifecycle and are capable of working with APIs across various stages, from development to deployment and maintenance.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'An API Integration Specialist must have expertise in API design, development, and integration, as well as proficiency in programming languages. They should also have knowledge of cloud platforms, web services, and RESTful APIs.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are necessary for an API Integration Specialist:',
            ),
            _buildBulletPoint('Proficiency in API design and development'),
            _buildBulletPoint('Strong knowledge of web services (REST, SOAP, GraphQL)'),
            _buildBulletPoint('Experience with cloud platforms (AWS, Azure, GCP)'),
            _buildBulletPoint('Familiarity with authentication protocols (OAuth, JWT)'),
            _buildBulletPoint('Experience with API testing and debugging tools (Postman, Swagger)'),
            _buildBulletPoint('Understanding of JSON, XML, and other data formats'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s or Master’s degree in Computer Science, Information Technology, or a related field is typically required. Familiarity with software development practices, system design, and architecture is essential. Knowledge of languages such as Python, Java, JavaScript, Ruby, or PHP is also required.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The core responsibility of an API Integration Specialist is to ensure that APIs function properly within the larger system architecture. This includes writing and reviewing integration code, developing API documentation, managing API lifecycles, and resolving integration issues.',
            ),
            _buildBulletPoint('Integrating third-party APIs into existing systems and platforms'),
            _buildBulletPoint('Developing and maintaining API documentation for internal and external use'),
            _buildBulletPoint('Optimizing the performance of API integrations'),
            _buildBulletPoint('Troubleshooting integration issues and ensuring data consistency'),
            _buildBulletPoint('Ensuring security and compliance standards are met for API integrations'),
            _buildBulletPoint('Collaborating with developers and system architects on API solutions'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the entry-level API Integration Specialist salary in India is around Rs. 5,00,000 per annum. Mid-level professionals can earn up to Rs. 15,00,000 per annum, and senior-level specialists can earn over Rs. 25,00,000 per annum.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering API Integration Specialist Role'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('TCS (Tata Consultancy Services)'),
            _buildBulletPoint('Infosys'),
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
