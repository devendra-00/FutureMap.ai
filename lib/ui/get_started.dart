import 'package:career_guidance_system/ui/jobprofiles/api_integration_specalist.dart';
import 'package:career_guidance_system/ui/jobprofiles/application_support_engineer.dart';
import 'package:career_guidance_system/ui/jobprofiles/customer_service_executive.dart';
import 'package:career_guidance_system/ui/jobprofiles/cyber_security_specalist.dart';
import 'package:career_guidance_system/ui/jobprofiles/data_scientist.dart';
import 'package:career_guidance_system/ui/jobprofiles/database_administrator.dart';
import 'package:career_guidance_system/ui/jobprofiles/penetration_tester.dart';
import 'package:career_guidance_system/ui/jobprofiles/project_manager.dart';
import 'package:career_guidance_system/ui/jobprofiles/software_tester.dart';
import 'package:career_guidance_system/ui/jobprofiles/technical_writer.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'jobprofiles/ai_ml_specalist.dart';
import 'jobprofiles/business_analyst.dart';
import 'jobprofiles/networking_engineer.dart';
import 'jobprofiles/software_developer.dart';  // Ensure this import matches your file structure

class GetStarted extends StatelessWidget {
  void _showContacus(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Contact here"),
          content: Text("dkkushwaha2003@gmail.com \n ayushmandliya5@gmail.com"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "FutureMap.ai",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              "HOME",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GetStarted()),
              );
            },
          ),
          // Replacing "Services" with "Domain" dropdown
          PopupMenuButton<String>(
            onSelected: (domain) {
              // Navigate to a different page based on the selected domain
              _navigateToDomainPage(context, domain);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Software Development',
                  child: Text('Software Development'),
                ),
                PopupMenuItem<String>(
                  value: 'Data Science',
                  child: Text('Data Science'),
                ),
                PopupMenuItem<String>(
                  value: 'Cyber Security',
                  child: Text('Cyber Security'),
                ),
                PopupMenuItem<String>(
                  value: 'AI & Machine Learning',
                  child: Text('AI & Machine Learning'),
                ),
                PopupMenuItem<String>(
                  value: 'Network Engineering',
                  child: Text('Network Engineering'),
                ),
                PopupMenuItem<String>(
                  value: 'Business Analysis',
                  child: Text('Business Analysis'),
                ),
                PopupMenuItem<String>(
                  value: 'API Integration Specialist',
                  child: Text('API Integration Specialist'),
                ),
                PopupMenuItem<String>(
                  value: 'Application Support Engineer',
                  child: Text('Application Support Engineer'),
                ),
                PopupMenuItem<String>(
                  value: 'Database Administrator',
                  child: Text('Database Administrator'),
                ),
                PopupMenuItem<String>(
                  value: 'Software Tester',
                  child: Text('Software Tester'),
                ),
                PopupMenuItem<String>(
                  value: 'Penetration Tester',
                  child: Text('Penetration Tester'),
                ),
                PopupMenuItem<String>(
                  value: 'Project Manager',
                  child: Text('Project Manager'),
                ),
                PopupMenuItem<String>(
                  value: 'Technical Writer',
                  child: Text('Technical Writer'),
                ),
                PopupMenuItem<String>(
                  value: 'Customer Service Executive',
                  child: Text('Customer Service Executive'),
                ),
                // Add more domains as needed
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "DOMAIN",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),

          TextButton(
            child: Text(
              "CONTACT US",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            onPressed: () {
              _showContacus(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.png'),
              fit: BoxFit.fill, // Ensures the image covers the entire container
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 250.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Intelligent Career Guidance System',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Discover yourself',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  'Take the test to find the perfect role for you after Engineering',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => InputPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink[400]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 20)), // Increase padding
                    minimumSize: MaterialStateProperty.all(Size(200, 60)), // Set a minimum width and height
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    elevation: MaterialStateProperty.all(8),
                  ),
                  child: Text(
                    'Get Started!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Navigate to the page based on selected domain
  void _navigateToDomainPage(BuildContext context, String domain) {
    switch (domain) {
      case 'API Integration Specialist':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ApiIntegrationSpecialistPage()),
        );
        break;
      case 'Application Support Engineer':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ApplicationSupportEngineerPage()),
        );
        break;
      case 'Software Development':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SoftwareDeveloperPage()),
        );
        break;
      case 'Database Administrator':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DatabaseAdministratorPage()),
        );
        break;
      case 'Software Tester':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SoftwareTesterPage()),
        );
        break;
      case 'Data Science':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DataScientistPage()),
        );
        break;
      case 'Cyber Security':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CyberSecuritySpecialistPage()),
        );
        break;
      case 'AI & Machine Learning':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AiMlSpecialistPage()),
        );
        break;
      case 'Network Engineering':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => NetworkingEngineerPage()),
        );
        break;
      case 'Project Manager':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProjectManagerPage()),
        );
        break;
      case 'Penetration Tester':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PenetrationTesterPage()),
        );
        break;
      case 'Business Analysis':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BusinessAnalystPage()),
        );
        break;
      case 'Customer Service Executive':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CustomerServiceExecutivePage()),
        );
        break;
      case 'Technical Writer':
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TechnicalWriterPage()),
        );
        break;
      default:
        break;
    }
  }
}
