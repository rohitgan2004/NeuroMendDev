# NeuroMend: Remote Patient Monitoring App

## Overview
NeuroMend is a full-stack iOS application designed to aid in the remote monitoring of concussion recovery. The app enables patients to perform visio-vestibular exams and automatically send results to their Primary Care Physicians (PCPs). The application also includes an advanced eye-tracking module, facilitating remote diagnostics and improving accuracy in detecting concussive symptoms. This project was made in collaboration with Mikey Kistler.

## Key Features
- **Visio-Vestibular Exams**: Patients can perform tests directly through the app, with real-time guidance and results display.
- **Direct Data Transmission**: Exam results are securely sent to the patient's PCP for evaluation, ensuring seamless communication between patients and healthcare providers.
- **Eye-Tracking Module**: Integrates OpenCV-based pupil movement analysis, improving diagnostic accuracy by 25% and supporting remote concussion assessments.

## Tech Stack
- **Front-End**: Swift (iOS)
- **Back-End**: AWS Cloud Infrastructure for secure data storage and transmission
- **Computer Vision**: OpenCV library for real-time eye-tracking and image processing
- **Database**: AWS RDS for patient data management
- **Authentication**: OAuth 2.0 for secure user login and data access

## System Architecture
1. **iOS Front-End**:
   - Built using Swift, the front-end offers an intuitive user interface for patients to complete visio-vestibular exams.
   - The app ensures responsiveness and a seamless user experience, with error handling and in-app guidance for first-time users.

2. **Cloud-Based Back-End**:
   - Deployed on AWS, the back-end handles data storage, processing, and transmission.
   - Ensures secure communication using encrypted protocols and real-time syncing with healthcare providers' dashboards.

3. **Eye-Tracking Module**:
   - Developed using OpenCV, the module captures real-time video, analyzes pupil movement patterns, and generates diagnostic results.
   - The algorithm is optimized to run efficiently on iOS devices, providing fast, accurate feedback for remote patient assessments.
