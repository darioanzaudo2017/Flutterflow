import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

double? lat(LatLng? coordenada) {
  // return lat from coordenada
  if (coordenada != null) {
    return coordenada.latitude;
  } else {
    return null;
  }
}

double? long(LatLng? coordenada) {
  // return lat from coordenada
  if (coordenada != null) {
    return coordenada.longitude;
  } else {
    return null;
  }
}
