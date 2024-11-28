import 'package:flutter/material.dart';

import '../get_started.dart';

class ProjectManagerPage extends StatelessWidget {
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
        title: Text('Project Manager'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Project Manager',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Project Manager (PM) is responsible for planning, executing, and closing projects. They ensure that a project is completed on time, within budget, and to the satisfaction of stakeholders. PMs work with cross-functional teams, communicate with clients and stakeholders, and manage resources to achieve project goals. The role involves coordinating schedules, defining project scope, setting deadlines, and ensuring risks are managed effectively.',
            ),
            _buildContentText(
              'A Project Manager must have a strong understanding of project management methodologies (like Agile, Scrum, or Waterfall) and be able to manage budgets, timelines, and project deliverables. They often serve as the main point of contact between the project team and the client or organization leadership.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A successful Project Manager should possess strong leadership, communication, and organizational skills. They should be able to manage multiple projects simultaneously, make decisions under pressure, and work with diverse teams. Additionally, a solid understanding of project management tools and methodologies is essential.',
            ),
            _buildContentText(
              'The following core skills are required for a Project Manager:',
            ),
            _buildBulletPoint('Strong leadership and decision-making abilities'),
            _buildBulletPoint('Excellent communication skills (both written and verbal)'),
            _buildBulletPoint('Ability to manage and prioritize multiple projects'),
            _buildBulletPoint('Proficiency in project management tools (e.g., Jira, Asana, MS Project, Trello)'),
            _buildBulletPoint('Experience in managing project budgets and timelines'),
            _buildBulletPoint('Strong problem-solving and conflict resolution skills'),
            _buildBulletPoint('Familiarity with project management methodologies (Agile, Waterfall, Scrum)'),
            _buildBulletPoint('Risk management and mitigation strategies'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Business Administration, Management, Engineering, or a related field is typically required for a Project Manager. A Master’s degree (MBA) can be an advantage for higher-level positions. Certifications such as Project Management Professional (PMP), Certified ScrumMaster (CSM), or PRINCE2 are often preferred by employers.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'The primary responsibility of a Project Manager is to ensure the successful delivery of a project by planning, coordinating, and overseeing all aspects of the project lifecycle.',
            ),
            _buildBulletPoint('Define project scope, goals, and deliverables'),
            _buildBulletPoint('Develop detailed project plans, including timelines and resource allocation'),
            _buildBulletPoint('Manage project budgets and track financials to stay within budget'),
            _buildBulletPoint('Coordinate with cross-functional teams to ensure smooth project execution'),
            _buildBulletPoint('Track project progress and adjust plans as needed to stay on track'),
            _buildBulletPoint('Communicate with stakeholders and report on project status, risks, and issues'),
            _buildBulletPoint('Identify and mitigate project risks and obstacles'),
            _buildBulletPoint('Ensure all project documentation is maintained and organized'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'In India, the salary for a Project Manager varies depending on the industry, experience, and skill set. Entry-level Project Managers can expect to earn between Rs. 6,00,000 and Rs. 10,00,000 annually. Mid-level managers typically earn between Rs. 10,00,000 and Rs. 18,00,000 per year, while experienced Project Managers can earn upwards of Rs. 20,00,000 annually or more.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Project Manager Roles'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Cognizant'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('IBM'),
            _buildBulletPoint('Capgemini'),
            _buildBulletPoint('HCL Technologies'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
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
