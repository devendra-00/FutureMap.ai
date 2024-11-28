import 'package:flutter/material.dart';

import '../get_started.dart';

class SoftwareDeveloperPage extends StatelessWidget {
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
        title: Text('Software Developer'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Software Developer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Software Developer is responsible for designing, coding, testing, and maintaining software applications that meet user needs. Software developers create programs for a variety of platforms, including web applications, mobile apps, desktop software, and embedded systems. The role involves working closely with other team members such as project managers, designers, and quality assurance testers to build functional and scalable software solutions.',
            ),
            _buildContentText(
              'Software Developers are involved in all stages of the software development lifecycle, from gathering requirements to deployment and maintenance. They use programming languages such as Java, Python, C++, JavaScript, and others to write code and implement software solutions.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'To be a successful Software Developer, one must have strong programming skills, problem-solving abilities, and a solid understanding of computer science concepts. Developers should be able to work collaboratively in teams, understand project requirements, and deliver high-quality, bug-free code.',
            ),
            _buildContentText(
              'The following core skills are required for a Software Developer:',
            ),
            _buildBulletPoint('Proficiency in programming languages (Java, Python, C++, JavaScript, etc.)'),
            _buildBulletPoint('Knowledge of software development frameworks and libraries'),
            _buildBulletPoint('Understanding of databases and SQL'),
            _buildBulletPoint('Familiarity with web development technologies (HTML, CSS, JavaScript)'),
            _buildBulletPoint('Experience with version control systems (e.g., Git)'),
            _buildBulletPoint('Ability to write efficient and maintainable code'),
            _buildBulletPoint('Experience with software testing and debugging techniques'),
            _buildBulletPoint('Familiarity with Agile development methodologies'),
            _buildBulletPoint('Knowledge of cloud platforms (e.g., AWS, Azure, Google Cloud)'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, or a related field is typically required for a Software Developer role. Some employers may also accept candidates with degrees in related disciplines such as Engineering or Mathematics.',
            ),
            _buildContentText(
              'Additional certifications in specific programming languages or technologies (e.g., Oracle Certified Java Developer, Microsoft Certified: Azure Developer) can be beneficial for career growth.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Software Developer is to create software applications according to user requirements, ensuring that the code is functional, scalable, and free of bugs.',
            ),
            _buildBulletPoint('Design and develop software solutions based on user requirements'),
            _buildBulletPoint('Write clean, efficient, and maintainable code'),
            _buildBulletPoint('Test and debug code to ensure software quality'),
            _buildBulletPoint('Collaborate with cross-functional teams to build and improve software applications'),
            _buildBulletPoint('Write technical documentation for software systems and code'),
            _buildBulletPoint('Maintain and update software after it has been deployed'),
            _buildBulletPoint('Participate in code reviews to ensure coding standards are followed'),
            _buildBulletPoint('Stay up-to-date with new programming languages, frameworks, and technologies'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'In India, the salary for a Software Developer can vary widely based on experience, skills, and the company. Entry-level software developers can expect to earn between Rs. 4,00,000 and Rs. 7,00,000 per year. Mid-level developers with 3-5 years of experience typically earn between Rs. 7,00,000 and Rs. 12,00,000 annually, while senior developers or those with specialized skills can earn upwards of Rs. 15,00,000 or more.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Software Developer Roles'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Facebook'),
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
