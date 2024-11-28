import 'package:flutter/material.dart';

import '../get_started.dart';

class NetworkingEngineerPage extends StatelessWidget {
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
        title: Text('Networking Engineer'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Networking Engineer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Networking Engineer is responsible for the design, implementation, and maintenance of computer networks within an organization. They ensure that communication across networks is efficient, secure, and stable. Networking Engineers troubleshoot, configure, and optimize networking hardware and software, helping businesses and organizations build reliable and scalable network infrastructures.',
            ),
            _buildContentText(
              'The role involves collaborating with other IT professionals, designing network systems, managing network infrastructure, and ensuring network security. Networking Engineers also evaluate new technologies to improve the network’s performance and help the organization stay up to date with emerging networking trends.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A successful Networking Engineer must have strong technical skills in computer networking, network security, and communication protocols. They should also be well-versed in hardware configuration, troubleshooting, and the management of complex networks. Problem-solving abilities and a deep understanding of network protocols are essential for this role.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are required for a Networking Engineer:',
            ),
            _buildBulletPoint('Strong knowledge of networking protocols (TCP/IP, DNS, DHCP, etc.)'),
            _buildBulletPoint('Experience with network hardware (routers, switches, firewalls)'),
            _buildBulletPoint('Familiarity with network configuration tools and software'),
            _buildBulletPoint('Experience in network troubleshooting and optimization'),
            _buildBulletPoint('Understanding of network security principles and firewalls'),
            _buildBulletPoint('Knowledge of VPNs, LANs, and WANs'),
            _buildBulletPoint('Proficiency in network monitoring and diagnostic tools'),
            _buildBulletPoint('Experience with cloud networking and virtualized networks'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, or a related field is typically required for a Networking Engineer role. Many employers also look for candidates who have certifications such as Cisco Certified Network Associate (CCNA), CompTIA Network+, or Certified Information Systems Security Professional (CISSP). Advanced certifications like Cisco Certified Network Professional (CCNP) or Certified Wireless Network Administrator (CWNA) can be advantageous for career growth.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Networking Engineer is to design, implement, and maintain network systems that ensure efficient data transfer and secure communication across an organization\'s network infrastructure.',
            ),
            _buildBulletPoint('Designing, configuring, and installing computer networks'),
            _buildBulletPoint('Managing network infrastructure, including switches, routers, and firewalls'),
            _buildBulletPoint('Monitoring network performance and troubleshooting issues'),
            _buildBulletPoint('Ensuring network security and data protection through firewalls and other security measures'),
            _buildBulletPoint('Configuring and maintaining network services like DNS, DHCP, and VPNs'),
            _buildBulletPoint('Implementing network upgrades and changes to improve performance and capacity'),
            _buildBulletPoint('Collaborating with other IT teams to ensure seamless network integration'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'The salary for a Networking Engineer in India varies based on experience and expertise. Entry-level positions typically start from Rs. 3,50,000 to Rs. 6,00,000 per annum. Mid-level engineers can expect to earn between Rs. 7,00,000 and Rs. 12,00,000 annually, while experienced professionals in senior positions can earn upwards of Rs. 15,00,000 per annum.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Networking Engineer Role'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Cisco Systems'),
            _buildBulletPoint('Hewlett Packard Enterprise (HPE)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Infosys'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('Amazon Web Services (AWS)'),
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
