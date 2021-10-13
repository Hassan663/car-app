import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitModel {
  final IconData icon;
  final String delivered;
  final String pickup;
  final String Section;
  final String progress;
  final String Approved;
  final String claim;
  final String Arrived;
  final String Received;
  final String delivered_date;
  final String pickup_date;
  final String Section_date;
  final String progress_date;
  final String Approved_date;
  final String claim_date;
  final String Arrived_date;
  final String Received_date;

  VisitModel({
    required this.icon,
    required this.Approved,
    required this.Arrived,
    required this.Received,
    required this.Section,
    required this.claim,
    required this.delivered,
    required this.pickup,
    required this.progress,
    required this.Approved_date,
    required this.Arrived_date,
    required this.Received_date,
    required this.Section_date,
    required this.claim_date,
    required this.delivered_date,
    required this.pickup_date,
    required this.progress_date,
  });
  static final data = [
    VisitModel(
        icon: Icons.check_circle_outlined,
        Approved: 'Insurance Claim Approved',
        Arrived: 'Vehicle Arrived',
        Received: 'Documents Received',
        Section: 'Vehicle in Quality Check\nSection',
        claim:
            'Documents sent to\nInsurance Company for\nclaim(Al Buhaira National)',
        delivered: 'Vehicle delivered',
        pickup: 'Vehicle is ready for pickup',
        progress: 'Work in progress',
        Approved_date: '13:00, 09 Sept',
        Arrived_date: '09:00, 06 Sept',
        Received_date: '13:00, 05 Sept',
        Section_date: '17:00, 14 Sept',
        claim_date: '11:00, 07 Sept',
        delivered_date: '17:00, 15 Sept',
        pickup_date: '12:00, 15 Sept',
        progress_date: '15:00, 10 Sept')
  ];
}
