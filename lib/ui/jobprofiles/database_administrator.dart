import 'package:flutter/material.dart';

import '../get_started.dart';

class DatabaseAdministratorPage extends StatelessWidget {
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
        title: Text('Database Administrator'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Database Administrator',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Database Administrator (DBA) is responsible for the performance, integrity, and security of a database. They ensure that data is stored, organized, and accessible to authorized users while maintaining the overall functionality and security of the system. DBAs are also tasked with ensuring high availability, backup, recovery, and performance tuning of databases.',
            ),
            _buildContentText(
              'In addition to technical expertise, a DBA must work closely with other IT professionals and end-users to understand their data requirements and optimize the database architecture accordingly. They are also responsible for managing database-related projects, ensuring compliance with security standards, and troubleshooting any database issues that arise.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A successful Database Administrator should have strong technical knowledge of database management systems (DBMS), as well as experience with database performance tuning, backup and recovery processes, and database security. Strong problem-solving skills and the ability to work with large-scale databases are also essential for this role.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are required for a Database Administrator:',
            ),
            _buildBulletPoint('In-depth knowledge of database management systems (e.g., MySQL, Oracle, SQL Server, PostgreSQL)'),
            _buildBulletPoint('Experience with performance tuning and optimization of databases'),
            _buildBulletPoint('Strong understanding of database security principles and techniques'),
            _buildBulletPoint('Experience with backup and disaster recovery planning'),
            _buildBulletPoint('Knowledge of database replication, clustering, and high availability techniques'),
            _buildBulletPoint('Proficiency in SQL and other database-related programming languages'),
            _buildBulletPoint('Familiarity with cloud databases and database-as-a-service platforms'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Information Technology, or a related field is typically required for a Database Administrator role. Some employers may also prefer candidates with a Master’s degree in a relevant field. Certifications from database vendors like Oracle (e.g., Oracle Certified Professional) or Microsoft (e.g., Microsoft Certified Database Administrator) can significantly enhance job prospects.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Database Administrator is to maintain and manage databases to ensure data is stored securely and efficiently, and is accessible to the necessary users and applications.',
            ),
            _buildBulletPoint('Designing, implementing, and maintaining databases for storing and retrieving data'),
            _buildBulletPoint('Monitoring database performance and implementing optimizations for efficiency'),
            _buildBulletPoint('Ensuring database security through proper access controls and encryption methods'),
            _buildBulletPoint('Performing routine database maintenance tasks, including backups and updates'),
            _buildBulletPoint('Implementing disaster recovery plans and database restoration procedures'),
            _buildBulletPoint('Troubleshooting and resolving database issues and performance bottlenecks'),
            _buildBulletPoint('Collaborating with development teams to optimize database queries and improve performance'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'The salary for a Database Administrator in India can vary depending on experience and expertise. Entry-level DBAs can earn around Rs. 4,00,000 to Rs. 7,00,000 annually. Mid-level professionals typically earn between Rs. 8,00,000 and Rs. 12,00,000 per annum, while experienced DBAs with specialized skills in high availability or cloud technologies can earn upwards of Rs. 15,00,000 annually.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Database Administrator Role'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Oracle'),
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
