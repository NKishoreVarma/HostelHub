# StudentHub (HostelHub) - Sprint 2 Demo

## Overview
This project demonstrates the core concepts of **Stateless** and **Stateful** widgets in Flutter within the context of the **StudentHub (HostelHub)** application. The goal is to showcase how static UI elements and dynamic interactive features are implemented separately and combined effectively.

---

## Widget Explanations

### 1. StatelessWidget
**What it is:**
A `StatelessWidget` is a widget that describes part of the user interface which can depend on configuration information in the object itself and the build context, but does not change over time. It is immutable once built.

**Why it is used for static hostel UI:**
In the StudentHub app, elements like the **Header**, **Logo**, or **Informational Text** do not need to change after they are rendered. Using a `StatelessWidget` for these parts is efficient because Flutter knows it doesn't need to rebuild them unless the parent changes.

### 2. StatefulWidget
**What it is:**
A `StatefulWidget` is a widget that can change its appearance in response to events triggered by user interactions or data updates. It maintains a mutable `State` object that stores the widget's current data.

**Why it is used for interactive hostel features:**
Features like **Issue Counters**, **Toggle Switches**, or **Form Inputs** require the UI to update instantly when a user interacts with them. A `StatefulWidget` allows us to use `setState()` to trigger a rebuild of the widget with the new data, making the app dynamic and responsive.

---

## Code Snippets

### Stateless Widget Example (Static Header)
```dart
class StaticHostelHeader extends StatelessWidget {
  const StaticHostelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Welcome to StudentHub', style: TextStyle(fontSize: 24)),
        const Text('Streamlined issue reporting...'),
      ],
    );
  }
}
```

### Stateful Widget Example (Interactive Tracker)
```dart
class InteractiveIssueTracker extends StatefulWidget {
  const InteractiveIssueTracker({super.key});

  @override
  State<InteractiveIssueTracker> createState() => _InteractiveIssueTrackerState();
}

class _InteractiveIssueTrackerState extends State<InteractiveIssueTracker> {
  int _issuesReported = 0;

  void _reportIssue() {
    setState(() {
      _issuesReported++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Issues Reported: $_issuesReported'),
        ElevatedButton(onPressed: _reportIssue, child: const Text('Report New Issue')),
      ],
    );
  }
}
```

---

## Screenshots

| Initial UI | UI After Interaction |
|------------|----------------------|
| ![Initial Screen](placeholder_initial.png) | ![Updated Screen](placeholder_interaction.png) |

*(Note: Screenshots to be added after verification)*

---

## Reflection

### How Stateful Widgets Make Flutter Dynamic
Stateful widgets introduce the concept of "state" — data that can change during the widget's lifetime. By calling `setState()`, we tell the Flutter framework that something has changed, and it efficiently redraws only the affected widget. This mechanism is the backbone of any interactive Flutter app.

### Importance of Separating Static and Dynamic UI
Separating UI into Stateless and Stateful components improves **performance** and **code maintainability**.
- **Performance:** Complex static sub-trees (Stateless) don't need to be rebuilt when a small part of the UI (Stateful) changes.
- **Maintainability:** It makes the code easier to read and test. We can isolate the logic for interaction from the purely visual layout code.

---
## Submission Details
- **Sprint:** 2
- **Topic:** Stateless vs Stateful Widgets
- **Project:** StudentHub
