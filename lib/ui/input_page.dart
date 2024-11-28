import 'package:flutter/material.dart';
import 'get_started.dart';
import 'predict.dart';  // Import the ApiService class

final List<String> courseNames = [
  'Database Fundamental', 'Computer Architecture', 'Distributed Computing System', 'Cyber Security', 'Networking',
  'Software Development', 'Programming skills', 'Project management', 'Computer Forensic Fundamentals', 'Technical Communication',
  'AI ML', 'Software Engineering', 'Business Analysis', 'Communication Skills', 'Data Science',
  'Troubleshooting Skills', 'Graphic Designing'
];

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void _showContacus() {
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
  List<int> sliderValues = List.generate(17, (index) => 5); // Default all sliders to 5
  bool isLoading = false; // To show loading indicator during prediction
  String predictedRole = ""; // To store the predicted role

  Future<void> getPrediction() async {
    setState(() {
      isLoading = true;
    });
    String result = await makePredictionRequest(context,sliderValues); // Call the Predict function
    setState(() {
      isLoading = false;
    });

    // Show the prediction result
    _showDialog(result);
  }
  // Function to show the alert dialog
  void _showDialog(String result) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Predicted Role"),
          content: Text(result),
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

  // Function to update the skill rating at a given index
  void updateSkillRating(int index, int newRating) {
    setState(() {
      sliderValues[index] = newRating;
    });
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
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          TextButton(
            child: Text("HOME", style: TextStyle(fontSize: 14)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GetStarted()),
              );
            },
          ),
          TextButton(
            child: Text("CONTACT US", style: TextStyle(fontSize: 14)),
            onPressed: () {
             _showContacus();
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.fill,
            opacity: 0.5,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: 500,
            child: Container(
              margin: EdgeInsets.only(top: 60),
              width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Creating sliders dynamically
                      for (int i = 0; i < 17; i++)
                        SliderFormField(
                          index: i,
                          value: sliderValues[i],
                          onChanged: (newValue) {
                            updateSkillRating(i, newValue);
                          },
                        ),
                      SizedBox(height: 20),
                      // Submit button
                      ElevatedButton(
                        onPressed: isLoading ? null : getPrediction, // Disable button while loading
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.pink[400]),
                          foregroundColor: WidgetStateProperty.all(Colors.white),
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                          minimumSize: WidgetStateProperty.all(Size(70, 25)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                          elevation: WidgetStateProperty.all(8),
                        ),
                        child: isLoading
                            ? CircularProgressIndicator(color: Colors.white) // Show loading indicator while fetching prediction
                            : Text('Get Prediction'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SliderFormField extends StatelessWidget {
  final int index;
  final int value;
  final ValueChanged<int> onChanged;

  SliderFormField({
    required this.index,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(courseNames[index] + ' : ${value}', style: TextStyle(fontSize: 16)),
        Slider(
          min: 1,
          max: 9,
          value: value.toDouble(),
          divisions: 8,
          label: value.toString(),
          onChanged: (double newValue) {
            onChanged(newValue.toInt());
          },
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

