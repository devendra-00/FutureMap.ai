import 'package:flutter/material.dart';

import '../get_started.dart';

class PenetrationTesterPage extends StatelessWidget {
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
        title: Text('Penetration Tester'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Penetration Tester',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Penetration Tester (also known as an Ethical Hacker) is a cybersecurity professional responsible for testing the security of systems, networks, and applications by simulating attacks to identify vulnerabilities. Penetration Testers use a variety of hacking tools and techniques to find weaknesses in security defenses, assess the impact of potential attacks, and recommend solutions to improve security posture.',
            ),
            _buildContentText(
              'Penetration Testers work closely with security teams to assess and improve the effectiveness of an organization’s security policies, procedures, and technologies. They conduct thorough assessments, report vulnerabilities, and provide mitigation strategies to protect sensitive data and systems.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Penetration Tester must have strong technical skills in computer networking, security protocols, and vulnerability testing. They should be familiar with a wide range of hacking tools, penetration testing methodologies, and scripting languages to identify security flaws effectively.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are required for a Penetration Tester:',
            ),
            _buildBulletPoint('In-depth knowledge of networking protocols (TCP/IP, HTTP, DNS, etc.)'),
            _buildBulletPoint('Experience with penetration testing tools (e.g., Kali Linux, Metasploit, Burp Suite, Wireshark)'),
            _buildBulletPoint('Knowledge of web application security (OWASP Top 10)'),
            _buildBulletPoint('Proficiency in programming and scripting languages (Python, Bash, PowerShell, etc.)'),
            _buildBulletPoint('Experience with vulnerability scanning and risk assessment techniques'),
            _buildBulletPoint('Familiarity with ethical hacking frameworks (e.g., OWASP, NIST)'),
            _buildBulletPoint('Understanding of encryption, firewalls, IDS/IPS, and other security mechanisms'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Cybersecurity, Computer Science, Information Technology, or a related field is typically required. Certifications are also crucial for a Penetration Tester’s career. The most recognized certifications include Certified Ethical Hacker (CEH), Offensive Security Certified Professional (OSCP), and CompTIA Security+.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'Penetration Testers are responsible for conducting tests to simulate cyberattacks on systems, applications, and networks to find potential vulnerabilities and report them to stakeholders. They also work with security teams to develop effective mitigation strategies.',
            ),
            _buildBulletPoint('Perform penetration tests on web applications, networks, and mobile applications'),
            _buildBulletPoint('Identify vulnerabilities in systems and software by simulating attacks'),
            _buildBulletPoint('Provide detailed reports outlining security flaws and remediation strategies'),
            _buildBulletPoint('Use hacking tools and manual testing techniques to exploit weaknesses in the system'),
            _buildBulletPoint('Collaborate with development teams to patch vulnerabilities and secure systems'),
            _buildBulletPoint('Stay updated with the latest hacking techniques, tools, and cybersecurity threats'),
            _buildBulletPoint('Participate in security awareness training and promote best security practices'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'In India, the salary of a Penetration Tester can vary depending on the level of experience and expertise. Entry-level Penetration Testers typically earn between Rs. 4,00,000 and Rs. 8,00,000 annually. Mid-level professionals can earn between Rs. 8,00,000 and Rs. 15,00,000 per year, while experienced penetration testers with advanced skills and certifications can earn upwards of Rs. 20,00,000 annually.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Penetration Tester Role'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('PwC'),
            _buildBulletPoint('KPMG'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('HackerOne'),
            _buildBulletPoint('CrowdStrike'),
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
