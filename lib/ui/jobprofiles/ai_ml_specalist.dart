import 'package:career_guidance_system/ui/get_started.dart';
import 'package:flutter/material.dart';

class AiMlSpecialistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI/ML Specialist'),
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
              'AI/ML Specialist',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Job Description'),
            _buildContentText(
              'An artificial intelligence (AI)/ Machine Learning (ML) specialist applies their skills in engineering and computer science to create machines and software programs that can think for themselves. Most often, they use AI principles to address persistent business pain points, augment the capability of technical and human resources, and execute a change management/transformation process. The key contribution of an AI specialist is using emerging technologies, such as machine learning (ML) and neuro-linguistic programming (NLP), to solve business problems in new and creative ways that provide greater insight, accuracy, and consistency.',
            ),
            _buildContentText(
              'Machine Learning Engineer responsibilities include creating machine learning models and retraining systems. Your ultimate goal will be to shape and build efficient self-learning applications. You will be evaluating existing machine learning (ML) processes, performing statistical analysis to resolve data set problems, and enhancing the accuracy of our AI software\'s predictive automation capabilities.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Skills Required'),
            _buildContentText(
              'An AI/ML specialist is a software specialist with a strong mathematics background and knowledge of coding, whose core responsibilities are designing and developing machine learning and deep learning systems, running machine learning tests and experiments, implementing appropriate ML algorithms.',
            ),
            _buildContentText(
              'Based on our research, we identified the following core skills one must possess to get a job as an AI/ML Specialist:',
            ),
            _buildBulletPoint('Programming skills needed'),
            _buildBulletPoint('Computer science fundamentals and programming'),
            _buildBulletPoint('Distributed computing'),
            _buildBulletPoint('Machine learning algorithms and libraries'),
            _buildBulletPoint('Software engineering and system design'),
            _buildBulletPoint('Strong knowledge of data'),
            SizedBox(height: 16),
            _buildSectionTitle('Educational Requirements'),
            _buildContentText(
              'In order to get a job as an AI/ML Specialist a Bachelor or Master’s degree in computer science, mathematics or similar relevant field is a necessity. One has to master data structures (stacks, queues, multi-dimensional arrays, trees, graphs), algorithms (searching, sorting, optimization, dynamic programming), computability and complexity (P vs. NP, NP-complete problems, big-O notation, approximate algorithms), and computer architecture (memory, cache, bandwidth, deadlocks, distributed processing). One has to master coding languages, such as Python, C++, JavaScript, Java, C#, Julia, Shell, R, TypeScript.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Duties and Responsibilities'),
            _buildContentText(
              'An AI/ML Specialist produces a tailor-made solution for each problem. The only way to achieve optimal results is to carefully process the data and select the best algorithm for the given context.',
            ),
            _buildBulletPoint('Understanding business objectives and developing models that help to achieve them, along with metrics to track their progress'),
            _buildBulletPoint('Understand company and client challenges and how integrating AI capabilities can help create solutions'),
            _buildBulletPoint('Develop machine learning applications according to requirements'),
            _buildBulletPoint('Select appropriate datasets and data representation methods'),
            _buildBulletPoint('Analyze and explain AI and machine learning (ML) solutions while setting and maintaining high ethical standards'),
            _buildBulletPoint('Designing machine learning systems and self-running artificial intelligence (AI) software to automate predictive models'),
            SizedBox(height: 16),
            _buildSectionTitle('Salary'),
            _buildContentText(
              'According to online sources, the entry-level Artificial Intelligence/ Machine Learning salary in India for almost 40% of professionals earn around Rs. 6,00,000, mid-level and senior-level artificial intelligence salary could earn more than Rs. 50,00,000 in India.',
            ),
            SizedBox(height: 16),
            _buildSectionTitle('Companies Offering AI/ML Specialist Role'),
            _buildBulletPoint('Microsoft'),
            _buildBulletPoint('Google'),
            _buildBulletPoint('Nokia'),
            _buildBulletPoint('JP Morgan'),
            _buildBulletPoint('Cisco'),
            _buildBulletPoint('Amazon'),
            _buildBulletPoint('Apple'),
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
