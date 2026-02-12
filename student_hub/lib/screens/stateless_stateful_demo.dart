import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentHub - Hostel Issue Tracker'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          // Stateless Widget Portion
          const StaticHostelHeader(),
          const Divider(thickness: 2),
          // Stateful Widget Portion
          const Expanded(child: InteractiveIssueTracker()),
        ],
      ),
    );
  }
}

// 1. Stateless Widget: Represents a STATIC hostel-related UI
class StaticHostelHeader extends StatelessWidget {
  const StaticHostelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to StudentHub',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Streamlined issue reporting for hostel residents. Report mess issues, maintenance requests, and facility complaints easily.',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: const Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'This header is static and does not change on interaction.',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 2. Stateful Widget: Demonstrates DYNAMIC behavior
class InteractiveIssueTracker extends StatefulWidget {
  const InteractiveIssueTracker({super.key});

  @override
  State<InteractiveIssueTracker> createState() => _InteractiveIssueTrackerState();
}

class _InteractiveIssueTrackerState extends State<InteractiveIssueTracker> {
  int _issuesReported = 0;
  bool _isHighPriority = false;

  void _reportIssue() {
    setState(() {
      _issuesReported++;
    });
  }

  void _togglePriority() {
    setState(() {
      _isHighPriority = !_isHighPriority;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      color: _isHighPriority ? Colors.red.shade50 : Colors.green.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Interactive Issue Tracker',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Issues Reported: $_issuesReported',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _reportIssue,
            icon: const Icon(Icons.add),
            label: const Text('Report New Issue'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
          const SizedBox(height: 20),
          SwitchListTile(
            title: const Text('Mark as High Priority'),
            subtitle: const Text('Updates UI color and state'),
            value: _isHighPriority,
            onChanged: (bool value) {
              _togglePriority();
            },
            secondary: Icon(
              Icons.priority_high,
              color: _isHighPriority ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
