import 'package:flutter/material.dart';

import '../get_started.dart';

class DataScientistPage extends StatelessWidget {
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
        title: Text('Data Scientist'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Data Scientist',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'A Data Scientist is responsible for collecting, analyzing, and interpreting large sets of structured and unstructured data to derive insights and support decision-making in an organization. Data Scientists apply various statistical, machine learning, and data mining techniques to uncover patterns, trends, and relationships in data, ultimately helping organizations to make data-driven decisions.',
            ),
            _buildContentText(
              'Data Scientists work closely with other teams, including business analysts and software engineers, to identify areas where data analysis can provide valuable insights. They use advanced analytics and algorithms to build predictive models, optimize business processes, and improve overall operational efficiency.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'A Data Scientist must have strong analytical, mathematical, and programming skills. They should be proficient in data analysis, data visualization, machine learning algorithms, and have the ability to work with large datasets. Familiarity with statistical tools, data mining techniques, and experience in software engineering practices is crucial for success in this role.',
            ),
            _buildContentText(
              'Based on industry research, the following core skills are essential for a Data Scientist:',
            ),
            _buildBulletPoint('Proficiency in programming languages like Python, R, or SQL'),
            _buildBulletPoint('Strong foundation in statistics, probability, and linear algebra'),
            _buildBulletPoint('Experience with machine learning algorithms and libraries (e.g., Scikit-learn, TensorFlow, Keras)'),
            _buildBulletPoint('Data wrangling and data cleaning skills'),
            _buildBulletPoint('Experience with big data technologies (e.g., Hadoop, Spark)'),
            _buildBulletPoint('Data visualization tools (e.g., Tableau, Power BI, Matplotlib, Seaborn)'),
            _buildBulletPoint('Ability to work with databases (SQL, NoSQL)'),
            _buildBulletPoint('Problem-solving and critical thinking skills'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'A Bachelor’s degree in Computer Science, Statistics, Mathematics, or a related field is required. Most Data Scientists also hold a Master’s degree or higher in a specialized field like Data Science, Machine Learning, or Artificial Intelligence. Additional certifications or training in data science tools, machine learning, or programming can enhance job prospects.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'Data Scientists are responsible for analyzing large datasets, building machine learning models, and providing actionable insights to improve business decision-making. They work closely with other teams to ensure data quality and accuracy, and translate complex technical findings into understandable business terms.',
            ),
            _buildBulletPoint('Collecting, processing, and analyzing large datasets to identify trends and patterns'),
            _buildBulletPoint('Building machine learning models to make predictions or automate decision-making'),
            _buildBulletPoint('Developing data pipelines to handle structured and unstructured data'),
            _buildBulletPoint('Presenting data insights and recommendations to stakeholders through reports and visualizations'),
            _buildBulletPoint('Collaborating with business teams to identify key performance indicators (KPIs) and analytical needs'),
            _buildBulletPoint('Cleaning and transforming raw data to make it suitable for analysis'),
            _buildBulletPoint('Staying updated with the latest data science trends, tools, and techniques'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'The salary for Data Scientists varies widely based on experience, expertise, and the company. In India, entry-level Data Scientists can expect to earn between Rs. 6,00,000 to Rs. 12,00,000 per annum. Mid-level professionals can earn between Rs. 12,00,000 and Rs. 20,00,000 annually, while senior Data Scientists or those in specialized fields like machine learning and AI can earn upwards of Rs. 25,00,000 per annum.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering Data Scientist Role'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Wipro'),
            _buildBulletPoint('Accenture'),
            _buildBulletPoint('Flipkart'),
            _buildBulletPoint('Tata Consultancy Services (TCS)'),
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
