import 'package:flutter/material.dart';

import '../get_started.dart';

class CyberSecuritySpecialistPage extends StatelessWidget {
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
        title: Text('Cyber Security Specialist'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cyber Security Specialist',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Cyber Security Specialist is responsible for protecting an organization\'s computer systems, networks, and sensitive data from security breaches, cyberattacks, and other digital threats. They design, implement, and monitor security measures to safeguard information systems, conduct vulnerability assessments, and ensure that the organization complies with industry regulations and standards.',
            ),
            _buildContentText(
              'Cyber Security Specialists play a critical role in identifying and mitigating risks, responding to security incidents, and continuously updating and improving the organization\'s security posture to address emerging threats. They often work in collaboration with other IT teams to ensure systems and applications are secure.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Cyber Security Specialist should have a strong understanding of computer networks, security protocols, and encryption techniques. They must also be skilled in identifying vulnerabilities and responding to security breaches effectively. Knowledge of regulatory compliance frameworks and the ability to work under pressure are also essential.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are essential for a Cyber Security Specialist:',
            ),
            _buildBulletPoint('In-depth knowledge of network security, firewalls, and VPNs'),
            _buildBulletPoint('Proficiency in security tools and techniques (e.g., intrusion detection systems, SIEM tools)'),
            _buildBulletPoint('Experience with encryption algorithms and protocols'),
            _buildBulletPoint('Familiarity with cybersecurity regulations and compliance standards (e.g., GDPR, HIPAA, ISO 27001)'),
            _buildBulletPoint('Strong problem-solving and analytical skills'),
            _buildBulletPoint('Knowledge of incident response and forensics'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, Cyber Security, or a related field is typically required. Many employers prefer candidates with certifications such as Certified Information Systems Security Professional (CISSP), Certified Ethical Hacker (CEH), or CompTIA Security+. A Master’s degree or additional certifications in specialized areas like penetration testing or cloud security can be an added advantage.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'Cyber Security Specialists are responsible for protecting the organization from cyber threats by designing and implementing security systems, identifying potential vulnerabilities, and responding to security breaches.',
            ),
            _buildBulletPoint('Monitor and protect computer systems and networks from cyberattacks'),
            _buildBulletPoint('Implement and maintain security tools and systems (e.g., firewalls, antivirus software)'),
            _buildBulletPoint('Conduct risk assessments and vulnerability scans to identify potential threats'),
            _buildBulletPoint('Respond to security incidents and breaches, performing forensic analysis when necessary'),
            _buildBulletPoint('Develop and enforce security policies and procedures for the organization'),
            _buildBulletPoint('Collaborate with IT teams to ensure secure configurations and updates for systems and applications'),
            _buildBulletPoint('Stay updated on the latest security trends, vulnerabilities, and threats'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the average salary for a Cyber Security Specialist in India varies based on experience and location. Entry-level positions can start at around Rs. 4,00,000 to Rs. 7,00,000 per annum, while mid-level specialists can earn between Rs. 8,00,000 and Rs. 15,00,000 per annum. Senior-level roles or specialists with expertise in niche areas can earn upwards of Rs. 20,00,000 annually.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Cyber Security Specialist Role'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('HCL Technologies'),
            _buildBulletPoint('Cognizant'),
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
