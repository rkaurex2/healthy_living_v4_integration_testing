import 'package:mockito/annotations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_scan/src/analytics/scan_analytics.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:storage/storage.dart';

@GenerateMocks([
  SessionRepository,
  SearchRepository,
  ScanAnalytics,
  KeyValueStorage,
  UploadPictureRemoteDataSource,
  ProductSubmissionAnalytics,
])
void main() {}
