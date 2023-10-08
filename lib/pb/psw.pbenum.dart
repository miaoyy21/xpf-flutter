///
//  Generated code. Do not modify.
//  source: psw.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MsgNo extends $pb.ProtobufEnum {
  static const MsgNo Msg1201 = MsgNo._(1201, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1201');
  static const MsgNo Msg1202 = MsgNo._(1202, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1202');
  static const MsgNo Msg1203 = MsgNo._(1203, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1203');
  static const MsgNo Msg1204 = MsgNo._(1204, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1204');
  static const MsgNo Msg1301 = MsgNo._(1301, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1301');
  static const MsgNo Msg1302 = MsgNo._(1302, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1302');
  static const MsgNo Msg1303 = MsgNo._(1303, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1303');
  static const MsgNo Msg1304 = MsgNo._(1304, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg1304');
  static const MsgNo Msg2101 = MsgNo._(2101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg2101');
  static const MsgNo Msg2102 = MsgNo._(2102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg2102');
  static const MsgNo Msg2103 = MsgNo._(2103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg2103');
  static const MsgNo Msg2104 = MsgNo._(2104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg2104');
  static const MsgNo Msg3101 = MsgNo._(3101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg3101');
  static const MsgNo Msg3102 = MsgNo._(3102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg3102');
  static const MsgNo Msg3103 = MsgNo._(3103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg3103');
  static const MsgNo Msg3201 = MsgNo._(3201, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg3201');
  static const MsgNo Msg3202 = MsgNo._(3202, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg3202');
  static const MsgNo Msg9000 = MsgNo._(9000, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg9000');
  static const MsgNo Msg9001 = MsgNo._(9001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg9001');
  static const MsgNo Msg9002 = MsgNo._(9002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg9002');
  static const MsgNo Msg9009 = MsgNo._(9009, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Msg9009');

  static const $core.List<MsgNo> values = <MsgNo> [
    Msg1201,
    Msg1202,
    Msg1203,
    Msg1204,
    Msg1301,
    Msg1302,
    Msg1303,
    Msg1304,
    Msg2101,
    Msg2102,
    Msg2103,
    Msg2104,
    Msg3101,
    Msg3102,
    Msg3103,
    Msg3201,
    Msg3202,
    Msg9000,
    Msg9001,
    Msg9002,
    Msg9009,
  ];

  static final $core.Map<$core.int, MsgNo> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgNo? valueOf($core.int value) => _byValue[value];

  const MsgNo._($core.int v, $core.String n) : super(v, n);
}

class FieldType extends $pb.ProtobufEnum {
  static const FieldType FieldText = FieldType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FieldText');
  static const FieldType FieldObscure = FieldType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FieldObscure');
  static const FieldType FieldLink = FieldType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FieldLink');
  static const FieldType FieldImage = FieldType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FieldImage');

  static const $core.List<FieldType> values = <FieldType> [
    FieldText,
    FieldObscure,
    FieldLink,
    FieldImage,
  ];

  static final $core.Map<$core.int, FieldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldType? valueOf($core.int value) => _byValue[value];

  const FieldType._($core.int v, $core.String n) : super(v, n);
}

class FileType extends $pb.ProtobufEnum {
  static const FileType FileImage = FileType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileImage');
  static const FileType FileCabinet = FileType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileCabinet');

  static const $core.List<FileType> values = <FileType> [
    FileImage,
    FileCabinet,
  ];

  static final $core.Map<$core.int, FileType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileType? valueOf($core.int value) => _byValue[value];

  const FileType._($core.int v, $core.String n) : super(v, n);
}

class VideoQuality extends $pb.ProtobufEnum {
  static const VideoQuality DefaultQuality = VideoQuality._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DefaultQuality');
  static const VideoQuality LowQuality = VideoQuality._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LowQuality');
  static const VideoQuality MediumQuality = VideoQuality._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MediumQuality');
  static const VideoQuality HighestQuality = VideoQuality._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HighestQuality');
  static const VideoQuality Res640x480Quality = VideoQuality._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Res640x480Quality');
  static const VideoQuality Res960x540Quality = VideoQuality._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Res960x540Quality');
  static const VideoQuality Res1280x720Quality = VideoQuality._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Res1280x720Quality');
  static const VideoQuality Res1920x1080Quality = VideoQuality._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Res1920x1080Quality');

  static const $core.List<VideoQuality> values = <VideoQuality> [
    DefaultQuality,
    LowQuality,
    MediumQuality,
    HighestQuality,
    Res640x480Quality,
    Res960x540Quality,
    Res1280x720Quality,
    Res1920x1080Quality,
  ];

  static final $core.Map<$core.int, VideoQuality> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VideoQuality? valueOf($core.int value) => _byValue[value];

  const VideoQuality._($core.int v, $core.String n) : super(v, n);
}

