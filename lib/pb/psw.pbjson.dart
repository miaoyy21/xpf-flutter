///
//  Generated code. Do not modify.
//  source: psw.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgNoDescriptor instead')
const MsgNo$json = const {
  '1': 'MsgNo',
  '2': const [
    const {'1': 'Msg1201', '2': 1201},
    const {'1': 'Msg1202', '2': 1202},
    const {'1': 'Msg1203', '2': 1203},
    const {'1': 'Msg1204', '2': 1204},
    const {'1': 'Msg1301', '2': 1301},
    const {'1': 'Msg1302', '2': 1302},
    const {'1': 'Msg1303', '2': 1303},
    const {'1': 'Msg1304', '2': 1304},
    const {'1': 'Msg2101', '2': 2101},
    const {'1': 'Msg2102', '2': 2102},
    const {'1': 'Msg2103', '2': 2103},
    const {'1': 'Msg2104', '2': 2104},
    const {'1': 'Msg3101', '2': 3101},
    const {'1': 'Msg3102', '2': 3102},
    const {'1': 'Msg3103', '2': 3103},
    const {'1': 'Msg3201', '2': 3201},
    const {'1': 'Msg3202', '2': 3202},
    const {'1': 'Msg9000', '2': 9000},
    const {'1': 'Msg9001', '2': 9001},
    const {'1': 'Msg9002', '2': 9002},
    const {'1': 'Msg9009', '2': 9009},
  ],
};

/// Descriptor for `MsgNo`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List msgNoDescriptor = $convert.base64Decode('CgVNc2dObxIMCgdNc2cxMjAxELEJEgwKB01zZzEyMDIQsgkSDAoHTXNnMTIwMxCzCRIMCgdNc2cxMjA0ELQJEgwKB01zZzEzMDEQlQoSDAoHTXNnMTMwMhCWChIMCgdNc2cxMzAzEJcKEgwKB01zZzEzMDQQmAoSDAoHTXNnMjEwMRC1EBIMCgdNc2cyMTAyELYQEgwKB01zZzIxMDMQtxASDAoHTXNnMjEwNBC4EBIMCgdNc2czMTAxEJ0YEgwKB01zZzMxMDIQnhgSDAoHTXNnMzEwMxCfGBIMCgdNc2czMjAxEIEZEgwKB01zZzMyMDIQghkSDAoHTXNnOTAwMBCoRhIMCgdNc2c5MDAxEKlGEgwKB01zZzkwMDIQqkYSDAoHTXNnOTAwORCxRg==');
@$core.Deprecated('Use fieldTypeDescriptor instead')
const FieldType$json = const {
  '1': 'FieldType',
  '2': const [
    const {'1': 'FieldText', '2': 1},
    const {'1': 'FieldObscure', '2': 2},
    const {'1': 'FieldLink', '2': 4},
    const {'1': 'FieldImage', '2': 8},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode('CglGaWVsZFR5cGUSDQoJRmllbGRUZXh0EAESEAoMRmllbGRPYnNjdXJlEAISDQoJRmllbGRMaW5rEAQSDgoKRmllbGRJbWFnZRAI');
@$core.Deprecated('Use fileTypeDescriptor instead')
const FileType$json = const {
  '1': 'FileType',
  '2': const [
    const {'1': 'FileImage', '2': 1},
    const {'1': 'FileCabinet', '2': 2},
  ],
};

/// Descriptor for `FileType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fileTypeDescriptor = $convert.base64Decode('CghGaWxlVHlwZRINCglGaWxlSW1hZ2UQARIPCgtGaWxlQ2FiaW5ldBAC');
@$core.Deprecated('Use videoQualityDescriptor instead')
const VideoQuality$json = const {
  '1': 'VideoQuality',
  '2': const [
    const {'1': 'DefaultQuality', '2': 1},
    const {'1': 'LowQuality', '2': 2},
    const {'1': 'MediumQuality', '2': 3},
    const {'1': 'HighestQuality', '2': 4},
    const {'1': 'Res640x480Quality', '2': 5},
    const {'1': 'Res960x540Quality', '2': 6},
    const {'1': 'Res1280x720Quality', '2': 7},
    const {'1': 'Res1920x1080Quality', '2': 8},
  ],
};

/// Descriptor for `VideoQuality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List videoQualityDescriptor = $convert.base64Decode('CgxWaWRlb1F1YWxpdHkSEgoORGVmYXVsdFF1YWxpdHkQARIOCgpMb3dRdWFsaXR5EAISEQoNTWVkaXVtUXVhbGl0eRADEhIKDkhpZ2hlc3RRdWFsaXR5EAQSFQoRUmVzNjQweDQ4MFF1YWxpdHkQBRIVChFSZXM5NjB4NTQwUXVhbGl0eRAGEhYKElJlczEyODB4NzIwUXVhbGl0eRAHEhcKE1JlczE5MjB4MTA4MFF1YWxpdHkQCA==');
@$core.Deprecated('Use accountFieldDescriptor instead')
const AccountField$json = const {
  '1': 'AccountField',
  '2': const [
    const {'1': 'index', '3': 1, '4': 2, '5': 5, '10': 'index'},
    const {'1': 'name', '3': 2, '4': 3, '5': 11, '6': '.pb.AccountField.NameEntry', '10': 'name'},
    const {'1': 'isPrimary', '3': 3, '4': 2, '5': 8, '10': 'isPrimary'},
    const {'1': 'type', '3': 4, '4': 2, '5': 14, '6': '.pb.FieldType', '10': 'type'},
    const {'1': 'bytes', '3': 5, '4': 2, '5': 12, '10': 'bytes'},
    const {'1': 'minLines', '3': 6, '4': 2, '5': 5, '10': 'minLines'},
    const {'1': 'maxLines', '3': 7, '4': 2, '5': 5, '10': 'maxLines'},
  ],
  '3': const [AccountField_NameEntry$json],
};

@$core.Deprecated('Use accountFieldDescriptor instead')
const AccountField_NameEntry$json = const {
  '1': 'NameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `AccountField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountFieldDescriptor = $convert.base64Decode('CgxBY2NvdW50RmllbGQSFAoFaW5kZXgYASACKAVSBWluZGV4Ei4KBG5hbWUYAiADKAsyGi5wYi5BY2NvdW50RmllbGQuTmFtZUVudHJ5UgRuYW1lEhwKCWlzUHJpbWFyeRgDIAIoCFIJaXNQcmltYXJ5EiEKBHR5cGUYBCACKA4yDS5wYi5GaWVsZFR5cGVSBHR5cGUSFAoFYnl0ZXMYBSACKAxSBWJ5dGVzEhoKCG1pbkxpbmVzGAYgAigFUghtaW5MaW5lcxIaCghtYXhMaW5lcxgHIAIoBVIIbWF4TGluZXMaNwoJTmFtZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use applicationAccountDescriptor instead')
const ApplicationAccount$json = const {
  '1': 'ApplicationAccount',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'accountId', '3': 2, '4': 2, '5': 9, '10': 'accountId'},
    const {'1': 'categoryId', '3': 3, '4': 2, '5': 3, '10': 'categoryId'},
    const {'1': 'appId', '3': 4, '4': 2, '5': 9, '10': 'appId'},
    const {'1': 'appName', '3': 5, '4': 3, '5': 11, '6': '.pb.ApplicationAccount.AppNameEntry', '10': 'appName'},
    const {'1': 'createAt', '3': 6, '4': 2, '5': 5, '10': 'createAt'},
    const {'1': 'fields', '3': 7, '4': 3, '5': 11, '6': '.pb.AccountField', '10': 'fields'},
  ],
  '3': const [ApplicationAccount_AppNameEntry$json],
};

@$core.Deprecated('Use applicationAccountDescriptor instead')
const ApplicationAccount_AppNameEntry$json = const {
  '1': 'AppNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ApplicationAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationAccountDescriptor = $convert.base64Decode('ChJBcHBsaWNhdGlvbkFjY291bnQSDgoCaWQYASACKANSAmlkEhwKCWFjY291bnRJZBgCIAIoCVIJYWNjb3VudElkEh4KCmNhdGVnb3J5SWQYAyACKANSCmNhdGVnb3J5SWQSFAoFYXBwSWQYBCACKAlSBWFwcElkEj0KB2FwcE5hbWUYBSADKAsyIy5wYi5BcHBsaWNhdGlvbkFjY291bnQuQXBwTmFtZUVudHJ5UgdhcHBOYW1lEhoKCGNyZWF0ZUF0GAYgAigFUghjcmVhdGVBdBIoCgZmaWVsZHMYByADKAsyEC5wYi5BY2NvdW50RmllbGRSBmZpZWxkcxo6CgxBcHBOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use accountSnapshotDescriptor instead')
const AccountSnapshot$json = const {
  '1': 'AccountSnapshot',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'categoryId', '3': 2, '4': 2, '5': 3, '10': 'categoryId'},
    const {'1': 'appId', '3': 3, '4': 2, '5': 9, '10': 'appId'},
    const {'1': 'appName', '3': 4, '4': 3, '5': 11, '6': '.pb.AccountSnapshot.AppNameEntry', '10': 'appName'},
    const {'1': 'accountId', '3': 5, '4': 2, '5': 9, '10': 'accountId'},
    const {'1': 'createAt', '3': 6, '4': 2, '5': 5, '10': 'createAt'},
    const {'1': 'size', '3': 7, '4': 2, '5': 5, '10': 'size'},
  ],
  '3': const [AccountSnapshot_AppNameEntry$json],
};

@$core.Deprecated('Use accountSnapshotDescriptor instead')
const AccountSnapshot_AppNameEntry$json = const {
  '1': 'AppNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `AccountSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSnapshotDescriptor = $convert.base64Decode('Cg9BY2NvdW50U25hcHNob3QSDgoCaWQYASACKANSAmlkEh4KCmNhdGVnb3J5SWQYAiACKANSCmNhdGVnb3J5SWQSFAoFYXBwSWQYAyACKAlSBWFwcElkEjoKB2FwcE5hbWUYBCADKAsyIC5wYi5BY2NvdW50U25hcHNob3QuQXBwTmFtZUVudHJ5UgdhcHBOYW1lEhwKCWFjY291bnRJZBgFIAIoCVIJYWNjb3VudElkEhoKCGNyZWF0ZUF0GAYgAigFUghjcmVhdGVBdBISCgRzaXplGAcgAigFUgRzaXplGjoKDEFwcE5hbWVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use applicationCategoryDescriptor instead')
const ApplicationCategory$json = const {
  '1': 'ApplicationCategory',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'protoId', '3': 2, '4': 2, '5': 5, '10': 'protoId'},
    const {'1': 'name', '3': 3, '4': 3, '5': 11, '6': '.pb.ApplicationCategory.NameEntry', '10': 'name'},
  ],
  '3': const [ApplicationCategory_NameEntry$json],
};

@$core.Deprecated('Use applicationCategoryDescriptor instead')
const ApplicationCategory_NameEntry$json = const {
  '1': 'NameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ApplicationCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationCategoryDescriptor = $convert.base64Decode('ChNBcHBsaWNhdGlvbkNhdGVnb3J5Eg4KAmlkGAEgAigDUgJpZBIYCgdwcm90b0lkGAIgAigFUgdwcm90b0lkEjUKBG5hbWUYAyADKAsyIS5wYi5BcHBsaWNhdGlvbkNhdGVnb3J5Lk5hbWVFbnRyeVIEbmFtZRo3CglOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = const {
  '1': 'Application',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 2, '5': 9, '10': 'appId'},
    const {'1': 'appName', '3': 2, '4': 3, '5': 11, '6': '.pb.Application.AppNameEntry', '10': 'appName'},
  ],
  '3': const [Application_AppNameEntry$json],
};

@$core.Deprecated('Use applicationDescriptor instead')
const Application_AppNameEntry$json = const {
  '1': 'AppNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode('CgtBcHBsaWNhdGlvbhIUCgVhcHBJZBgBIAIoCVIFYXBwSWQSNgoHYXBwTmFtZRgCIAMoCzIcLnBiLkFwcGxpY2F0aW9uLkFwcE5hbWVFbnRyeVIHYXBwTmFtZRo6CgxBcHBOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use fileDescriptor instead')
const File$json = const {
  '1': 'File',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'mime', '3': 3, '4': 2, '5': 9, '10': 'mime'},
    const {'1': 'ext', '3': 4, '4': 2, '5': 9, '10': 'ext'},
    const {'1': 'size', '3': 5, '4': 2, '5': 5, '10': 'size'},
    const {'1': 'hasThumbnail', '3': 6, '4': 2, '5': 8, '10': 'hasThumbnail'},
    const {'1': 'uploadAt', '3': 7, '4': 2, '5': 5, '10': 'uploadAt'},
    const {'1': 'isShared', '3': 8, '4': 2, '5': 8, '10': 'isShared'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode('CgRGaWxlEg4KAmlkGAEgAigDUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEhIKBG1pbWUYAyACKAlSBG1pbWUSEAoDZXh0GAQgAigJUgNleHQSEgoEc2l6ZRgFIAIoBVIEc2l6ZRIiCgxoYXNUaHVtYm5haWwYBiACKAhSDGhhc1RodW1ibmFpbBIaCgh1cGxvYWRBdBgHIAIoBVIIdXBsb2FkQXQSGgoIaXNTaGFyZWQYCCACKAhSCGlzU2hhcmVk');
@$core.Deprecated('Use trashDescriptor instead')
const Trash$json = const {
  '1': 'Trash',
  '2': const [
    const {'1': 'snapshot', '3': 1, '4': 1, '5': 11, '6': '.pb.AccountSnapshot', '10': 'snapshot'},
    const {'1': 'file', '3': 2, '4': 1, '5': 11, '6': '.pb.File', '10': 'file'},
    const {'1': 'deleteAt', '3': 3, '4': 2, '5': 5, '10': 'deleteAt'},
  ],
};

/// Descriptor for `Trash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trashDescriptor = $convert.base64Decode('CgVUcmFzaBIvCghzbmFwc2hvdBgBIAEoCzITLnBiLkFjY291bnRTbmFwc2hvdFIIc25hcHNob3QSHAoEZmlsZRgCIAEoCzIILnBiLkZpbGVSBGZpbGUSGgoIZGVsZXRlQXQYAyACKAVSCGRlbGV0ZUF0');
@$core.Deprecated('Use operateDescriptor instead')
const Operate$json = const {
  '1': 'Operate',
  '2': const [
    const {'1': 'msgNo', '3': 1, '4': 2, '5': 14, '6': '.pb.MsgNo', '10': 'msgNo'},
    const {'1': 'msg', '3': 2, '4': 3, '5': 9, '10': 'msg'},
    const {'1': 'rt', '3': 3, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'ip', '3': 4, '4': 2, '5': 9, '10': 'ip'},
    const {'1': 'at', '3': 5, '4': 2, '5': 5, '10': 'at'},
  ],
};

/// Descriptor for `Operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operateDescriptor = $convert.base64Decode('CgdPcGVyYXRlEh8KBW1zZ05vGAEgAigOMgkucGIuTXNnTm9SBW1zZ05vEhAKA21zZxgCIAMoCVIDbXNnEg4KAnJ0GAMgAigFUgJydBIOCgJpcBgEIAIoCVICaXASDgoCYXQYBSACKAVSAmF0');
@$core.Deprecated('Use scoreDescriptor instead')
const Score$json = const {
  '1': 'Score',
  '2': const [
    const {'1': 'action', '3': 1, '4': 2, '5': 5, '10': 'action'},
    const {'1': 'cost', '3': 2, '4': 2, '5': 3, '10': 'cost'},
    const {'1': 'score', '3': 3, '4': 2, '5': 3, '10': 'score'},
    const {'1': 'at', '3': 4, '4': 2, '5': 5, '10': 'at'},
  ],
};

/// Descriptor for `Score`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scoreDescriptor = $convert.base64Decode('CgVTY29yZRIWCgZhY3Rpb24YASACKAVSBmFjdGlvbhISCgRjb3N0GAIgAigDUgRjb3N0EhQKBXNjb3JlGAMgAigDUgVzY29yZRIOCgJhdBgEIAIoBVICYXQ=');
@$core.Deprecated('Use userDataDescriptor instead')
const UserData$json = const {
  '1': 'UserData',
  '2': const [
    const {'1': 'version', '3': 1, '4': 2, '5': 9, '10': 'version'},
    const {'1': 'assetsVersion', '3': 2, '4': 2, '5': 9, '10': 'assetsVersion'},
    const {'1': 'isGesture', '3': 3, '4': 2, '5': 8, '10': 'isGesture'},
    const {'1': 'gesture', '3': 4, '4': 2, '5': 12, '10': 'gesture'},
    const {'1': 'validityGesture', '3': 5, '4': 2, '5': 5, '10': 'validityGesture'},
    const {'1': 'categories', '3': 6, '4': 3, '5': 11, '6': '.pb.ApplicationCategory', '10': 'categories'},
    const {'1': 'snapshots', '3': 7, '4': 3, '5': 11, '6': '.pb.AccountSnapshot', '10': 'snapshots'},
    const {'1': 'files', '3': 8, '4': 3, '5': 11, '6': '.pb.File', '10': 'files'},
    const {'1': 'score', '3': 9, '4': 2, '5': 3, '10': 'score'},
    const {'1': 'products', '3': 10, '4': 3, '5': 9, '10': 'products'},
    const {'1': 'qrCode', '3': 11, '4': 2, '5': 9, '10': 'qrCode'},
    const {'1': 'maxFileSizeM', '3': 12, '4': 2, '5': 5, '10': 'maxFileSizeM'},
    const {'1': 'imageCompressSizeM', '3': 13, '4': 2, '5': 5, '10': 'imageCompressSizeM'},
    const {'1': 'videoCompressSizeM', '3': 14, '4': 2, '5': 5, '10': 'videoCompressSizeM'},
    const {'1': 'costAccountScore', '3': 15, '4': 2, '5': 5, '10': 'costAccountScore'},
    const {'1': 'costFile10MScore', '3': 16, '4': 2, '5': 5, '10': 'costFile10MScore'},
    const {'1': 'allowCompression', '3': 17, '4': 2, '5': 8, '10': 'allowCompression'},
    const {'1': 'imageCompressPercentage', '3': 18, '4': 2, '5': 5, '10': 'imageCompressPercentage'},
    const {'1': 'imageCompressQuality', '3': 19, '4': 2, '5': 5, '10': 'imageCompressQuality'},
    const {'1': 'videoCompressQuality', '3': 20, '4': 2, '5': 14, '6': '.pb.VideoQuality', '10': 'videoCompressQuality'},
  ],
};

/// Descriptor for `UserData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataDescriptor = $convert.base64Decode('CghVc2VyRGF0YRIYCgd2ZXJzaW9uGAEgAigJUgd2ZXJzaW9uEiQKDWFzc2V0c1ZlcnNpb24YAiACKAlSDWFzc2V0c1ZlcnNpb24SHAoJaXNHZXN0dXJlGAMgAigIUglpc0dlc3R1cmUSGAoHZ2VzdHVyZRgEIAIoDFIHZ2VzdHVyZRIoCg92YWxpZGl0eUdlc3R1cmUYBSACKAVSD3ZhbGlkaXR5R2VzdHVyZRI3CgpjYXRlZ29yaWVzGAYgAygLMhcucGIuQXBwbGljYXRpb25DYXRlZ29yeVIKY2F0ZWdvcmllcxIxCglzbmFwc2hvdHMYByADKAsyEy5wYi5BY2NvdW50U25hcHNob3RSCXNuYXBzaG90cxIeCgVmaWxlcxgIIAMoCzIILnBiLkZpbGVSBWZpbGVzEhQKBXNjb3JlGAkgAigDUgVzY29yZRIaCghwcm9kdWN0cxgKIAMoCVIIcHJvZHVjdHMSFgoGcXJDb2RlGAsgAigJUgZxckNvZGUSIgoMbWF4RmlsZVNpemVNGAwgAigFUgxtYXhGaWxlU2l6ZU0SLgoSaW1hZ2VDb21wcmVzc1NpemVNGA0gAigFUhJpbWFnZUNvbXByZXNzU2l6ZU0SLgoSdmlkZW9Db21wcmVzc1NpemVNGA4gAigFUhJ2aWRlb0NvbXByZXNzU2l6ZU0SKgoQY29zdEFjY291bnRTY29yZRgPIAIoBVIQY29zdEFjY291bnRTY29yZRIqChBjb3N0RmlsZTEwTVNjb3JlGBAgAigFUhBjb3N0RmlsZTEwTVNjb3JlEioKEGFsbG93Q29tcHJlc3Npb24YESACKAhSEGFsbG93Q29tcHJlc3Npb24SOAoXaW1hZ2VDb21wcmVzc1BlcmNlbnRhZ2UYEiACKAVSF2ltYWdlQ29tcHJlc3NQZXJjZW50YWdlEjIKFGltYWdlQ29tcHJlc3NRdWFsaXR5GBMgAigFUhRpbWFnZUNvbXByZXNzUXVhbGl0eRJEChR2aWRlb0NvbXByZXNzUXVhbGl0eRgUIAIoDjIQLnBiLlZpZGVvUXVhbGl0eVIUdmlkZW9Db21wcmVzc1F1YWxpdHk=');
@$core.Deprecated('Use createApplicationCategoryDescriptor instead')
const CreateApplicationCategory$json = const {
  '1': 'CreateApplicationCategory',
  '2': const [
    const {'1': 'categoryName', '3': 1, '4': 3, '5': 11, '6': '.pb.CreateApplicationCategory.CategoryNameEntry', '10': 'categoryName'},
  ],
  '3': const [CreateApplicationCategory_CategoryNameEntry$json],
};

@$core.Deprecated('Use createApplicationCategoryDescriptor instead')
const CreateApplicationCategory_CategoryNameEntry$json = const {
  '1': 'CategoryNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CreateApplicationCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationCategoryDescriptor = $convert.base64Decode('ChlDcmVhdGVBcHBsaWNhdGlvbkNhdGVnb3J5ElMKDGNhdGVnb3J5TmFtZRgBIAMoCzIvLnBiLkNyZWF0ZUFwcGxpY2F0aW9uQ2F0ZWdvcnkuQ2F0ZWdvcnlOYW1lRW50cnlSDGNhdGVnb3J5TmFtZRo/ChFDYXRlZ29yeU5hbWVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use createApplicationCategoryRespDescriptor instead')
const CreateApplicationCategoryResp$json = const {
  '1': 'CreateApplicationCategoryResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'category', '3': 2, '4': 1, '5': 11, '6': '.pb.ApplicationCategory', '10': 'category'},
  ],
};

/// Descriptor for `CreateApplicationCategoryResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationCategoryRespDescriptor = $convert.base64Decode('Ch1DcmVhdGVBcHBsaWNhdGlvbkNhdGVnb3J5UmVzcBIOCgJydBgBIAIoBVICcnQSMwoIY2F0ZWdvcnkYAiABKAsyFy5wYi5BcHBsaWNhdGlvbkNhdGVnb3J5UghjYXRlZ29yeQ==');
@$core.Deprecated('Use deleteApplicationCategoryDescriptor instead')
const DeleteApplicationCategory$json = const {
  '1': 'DeleteApplicationCategory',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 2, '5': 3, '10': 'categoryId'},
  ],
};

/// Descriptor for `DeleteApplicationCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationCategoryDescriptor = $convert.base64Decode('ChlEZWxldGVBcHBsaWNhdGlvbkNhdGVnb3J5Eh4KCmNhdGVnb3J5SWQYASACKANSCmNhdGVnb3J5SWQ=');
@$core.Deprecated('Use deleteApplicationCategoryRespDescriptor instead')
const DeleteApplicationCategoryResp$json = const {
  '1': 'DeleteApplicationCategoryResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
  ],
};

/// Descriptor for `DeleteApplicationCategoryResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationCategoryRespDescriptor = $convert.base64Decode('Ch1EZWxldGVBcHBsaWNhdGlvbkNhdGVnb3J5UmVzcBIOCgJydBgBIAIoBVICcnQ=');
@$core.Deprecated('Use saveApplicationCategoryDescriptor instead')
const SaveApplicationCategory$json = const {
  '1': 'SaveApplicationCategory',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 2, '5': 3, '10': 'categoryId'},
    const {'1': 'categoryName', '3': 2, '4': 3, '5': 11, '6': '.pb.SaveApplicationCategory.CategoryNameEntry', '10': 'categoryName'},
  ],
  '3': const [SaveApplicationCategory_CategoryNameEntry$json],
};

@$core.Deprecated('Use saveApplicationCategoryDescriptor instead')
const SaveApplicationCategory_CategoryNameEntry$json = const {
  '1': 'CategoryNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SaveApplicationCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationCategoryDescriptor = $convert.base64Decode('ChdTYXZlQXBwbGljYXRpb25DYXRlZ29yeRIeCgpjYXRlZ29yeUlkGAEgAigDUgpjYXRlZ29yeUlkElEKDGNhdGVnb3J5TmFtZRgCIAMoCzItLnBiLlNhdmVBcHBsaWNhdGlvbkNhdGVnb3J5LkNhdGVnb3J5TmFtZUVudHJ5UgxjYXRlZ29yeU5hbWUaPwoRQ2F0ZWdvcnlOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use saveApplicationCategoryRespDescriptor instead')
const SaveApplicationCategoryResp$json = const {
  '1': 'SaveApplicationCategoryResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
  ],
};

/// Descriptor for `SaveApplicationCategoryResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationCategoryRespDescriptor = $convert.base64Decode('ChtTYXZlQXBwbGljYXRpb25DYXRlZ29yeVJlc3ASDgoCcnQYASACKAVSAnJ0');
@$core.Deprecated('Use saveApplicationCategoriesSeqDescriptor instead')
const SaveApplicationCategoriesSeq$json = const {
  '1': 'SaveApplicationCategoriesSeq',
  '2': const [
    const {'1': 'seqs', '3': 1, '4': 3, '5': 3, '10': 'seqs'},
  ],
};

/// Descriptor for `SaveApplicationCategoriesSeq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationCategoriesSeqDescriptor = $convert.base64Decode('ChxTYXZlQXBwbGljYXRpb25DYXRlZ29yaWVzU2VxEhIKBHNlcXMYASADKANSBHNlcXM=');
@$core.Deprecated('Use saveApplicationCategoriesSeqRespDescriptor instead')
const SaveApplicationCategoriesSeqResp$json = const {
  '1': 'SaveApplicationCategoriesSeqResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
  ],
};

/// Descriptor for `SaveApplicationCategoriesSeqResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationCategoriesSeqRespDescriptor = $convert.base64Decode('CiBTYXZlQXBwbGljYXRpb25DYXRlZ29yaWVzU2VxUmVzcBIOCgJydBgBIAIoBVICcnQ=');
@$core.Deprecated('Use getApplicationAccountDescriptor instead')
const GetApplicationAccount$json = const {
  '1': 'GetApplicationAccount',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `GetApplicationAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApplicationAccountDescriptor = $convert.base64Decode('ChVHZXRBcHBsaWNhdGlvbkFjY291bnQSDgoCaWQYASACKANSAmlk');
@$core.Deprecated('Use getApplicationAccountRespDescriptor instead')
const GetApplicationAccountResp$json = const {
  '1': 'GetApplicationAccountResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'account', '3': 2, '4': 1, '5': 11, '6': '.pb.ApplicationAccount', '10': 'account'},
  ],
};

/// Descriptor for `GetApplicationAccountResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApplicationAccountRespDescriptor = $convert.base64Decode('ChlHZXRBcHBsaWNhdGlvbkFjY291bnRSZXNwEg4KAnJ0GAEgAigFUgJydBIwCgdhY2NvdW50GAIgASgLMhYucGIuQXBwbGljYXRpb25BY2NvdW50UgdhY2NvdW50');
@$core.Deprecated('Use createApplicationAccountDescriptor instead')
const CreateApplicationAccount$json = const {
  '1': 'CreateApplicationAccount',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'appName', '3': 2, '4': 3, '5': 11, '6': '.pb.CreateApplicationAccount.AppNameEntry', '10': 'appName'},
  ],
  '3': const [CreateApplicationAccount_AppNameEntry$json],
};

@$core.Deprecated('Use createApplicationAccountDescriptor instead')
const CreateApplicationAccount_AppNameEntry$json = const {
  '1': 'AppNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CreateApplicationAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationAccountDescriptor = $convert.base64Decode('ChhDcmVhdGVBcHBsaWNhdGlvbkFjY291bnQSFAoFYXBwSWQYASABKAlSBWFwcElkEkMKB2FwcE5hbWUYAiADKAsyKS5wYi5DcmVhdGVBcHBsaWNhdGlvbkFjY291bnQuQXBwTmFtZUVudHJ5UgdhcHBOYW1lGjoKDEFwcE5hbWVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use createApplicationAccountRespDescriptor instead')
const CreateApplicationAccountResp$json = const {
  '1': 'CreateApplicationAccountResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'account', '3': 2, '4': 1, '5': 11, '6': '.pb.ApplicationAccount', '10': 'account'},
  ],
};

/// Descriptor for `CreateApplicationAccountResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationAccountRespDescriptor = $convert.base64Decode('ChxDcmVhdGVBcHBsaWNhdGlvbkFjY291bnRSZXNwEg4KAnJ0GAEgAigFUgJydBIwCgdhY2NvdW50GAIgASgLMhYucGIuQXBwbGljYXRpb25BY2NvdW50UgdhY2NvdW50');
@$core.Deprecated('Use deleteApplicationAccountDescriptor instead')
const DeleteApplicationAccount$json = const {
  '1': 'DeleteApplicationAccount',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DeleteApplicationAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationAccountDescriptor = $convert.base64Decode('ChhEZWxldGVBcHBsaWNhdGlvbkFjY291bnQSDgoCaWQYASACKANSAmlk');
@$core.Deprecated('Use deleteApplicationAccountRespDescriptor instead')
const DeleteApplicationAccountResp$json = const {
  '1': 'DeleteApplicationAccountResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DeleteApplicationAccountResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationAccountRespDescriptor = $convert.base64Decode('ChxEZWxldGVBcHBsaWNhdGlvbkFjY291bnRSZXNwEg4KAnJ0GAEgAigFUgJydBIOCgJpZBgCIAEoA1ICaWQ=');
@$core.Deprecated('Use saveApplicationAccountDescriptor instead')
const SaveApplicationAccount$json = const {
  '1': 'SaveApplicationAccount',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'accountId', '3': 2, '4': 2, '5': 9, '10': 'accountId'},
    const {'1': 'categoryId', '3': 3, '4': 2, '5': 3, '10': 'categoryId'},
    const {'1': 'appId', '3': 4, '4': 2, '5': 9, '10': 'appId'},
    const {'1': 'appName', '3': 5, '4': 3, '5': 11, '6': '.pb.SaveApplicationAccount.AppNameEntry', '10': 'appName'},
    const {'1': 'fields', '3': 6, '4': 3, '5': 11, '6': '.pb.AccountField', '10': 'fields'},
    const {'1': 'fileIds', '3': 7, '4': 3, '5': 3, '10': 'fileIds'},
  ],
  '3': const [SaveApplicationAccount_AppNameEntry$json],
};

@$core.Deprecated('Use saveApplicationAccountDescriptor instead')
const SaveApplicationAccount_AppNameEntry$json = const {
  '1': 'AppNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SaveApplicationAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationAccountDescriptor = $convert.base64Decode('ChZTYXZlQXBwbGljYXRpb25BY2NvdW50Eg4KAmlkGAEgAigDUgJpZBIcCglhY2NvdW50SWQYAiACKAlSCWFjY291bnRJZBIeCgpjYXRlZ29yeUlkGAMgAigDUgpjYXRlZ29yeUlkEhQKBWFwcElkGAQgAigJUgVhcHBJZBJBCgdhcHBOYW1lGAUgAygLMicucGIuU2F2ZUFwcGxpY2F0aW9uQWNjb3VudC5BcHBOYW1lRW50cnlSB2FwcE5hbWUSKAoGZmllbGRzGAYgAygLMhAucGIuQWNjb3VudEZpZWxkUgZmaWVsZHMSGAoHZmlsZUlkcxgHIAMoA1IHZmlsZUlkcxo6CgxBcHBOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use saveApplicationAccountRespDescriptor instead')
const SaveApplicationAccountResp$json = const {
  '1': 'SaveApplicationAccountResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'snapshot', '3': 2, '4': 1, '5': 11, '6': '.pb.AccountSnapshot', '10': 'snapshot'},
  ],
};

/// Descriptor for `SaveApplicationAccountResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveApplicationAccountRespDescriptor = $convert.base64Decode('ChpTYXZlQXBwbGljYXRpb25BY2NvdW50UmVzcBIOCgJydBgBIAIoBVICcnQSLwoIc25hcHNob3QYAiABKAsyEy5wYi5BY2NvdW50U25hcHNob3RSCHNuYXBzaG90');
@$core.Deprecated('Use shareFileDescriptor instead')
const ShareFile$json = const {
  '1': 'ShareFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'isShared', '3': 2, '4': 1, '5': 8, '10': 'isShared'},
  ],
};

/// Descriptor for `ShareFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareFileDescriptor = $convert.base64Decode('CglTaGFyZUZpbGUSDgoCaWQYASACKANSAmlkEhoKCGlzU2hhcmVkGAIgASgIUghpc1NoYXJlZA==');
@$core.Deprecated('Use shareFileRespDescriptor instead')
const ShareFileResp$json = const {
  '1': 'ShareFileResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
  ],
};

/// Descriptor for `ShareFileResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareFileRespDescriptor = $convert.base64Decode('Cg1TaGFyZUZpbGVSZXNwEg4KAnJ0GAEgAigFUgJydA==');
@$core.Deprecated('Use uploadFileDescriptor instead')
const UploadFile$json = const {
  '1': 'UploadFile',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 14, '6': '.pb.FileType', '10': 'type'},
    const {'1': 'accountId', '3': 2, '4': 2, '5': 3, '10': 'accountId'},
    const {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'mime', '3': 4, '4': 2, '5': 9, '10': 'mime'},
    const {'1': 'ext', '3': 5, '4': 2, '5': 9, '10': 'ext'},
    const {'1': 'bytes', '3': 6, '4': 2, '5': 12, '10': 'bytes'},
    const {'1': 'thumbnail', '3': 7, '4': 1, '5': 12, '10': 'thumbnail'},
    const {'1': 'size', '3': 8, '4': 2, '5': 5, '10': 'size'},
  ],
};

/// Descriptor for `UploadFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileDescriptor = $convert.base64Decode('CgpVcGxvYWRGaWxlEiAKBHR5cGUYASACKA4yDC5wYi5GaWxlVHlwZVIEdHlwZRIcCglhY2NvdW50SWQYAiACKANSCWFjY291bnRJZBISCgRuYW1lGAMgAigJUgRuYW1lEhIKBG1pbWUYBCACKAlSBG1pbWUSEAoDZXh0GAUgAigJUgNleHQSFAoFYnl0ZXMYBiACKAxSBWJ5dGVzEhwKCXRodW1ibmFpbBgHIAEoDFIJdGh1bWJuYWlsEhIKBHNpemUYCCACKAVSBHNpemU=');
@$core.Deprecated('Use uploadFileRespDescriptor instead')
const UploadFileResp$json = const {
  '1': 'UploadFileResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'uploadAt', '3': 3, '4': 1, '5': 5, '10': 'uploadAt'},
  ],
};

/// Descriptor for `UploadFileResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileRespDescriptor = $convert.base64Decode('Cg5VcGxvYWRGaWxlUmVzcBIOCgJydBgBIAIoBVICcnQSDgoCaWQYAiABKANSAmlkEhoKCHVwbG9hZEF0GAMgASgFUgh1cGxvYWRBdA==');
@$core.Deprecated('Use renameFileDescriptor instead')
const RenameFile$json = const {
  '1': 'RenameFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `RenameFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameFileDescriptor = $convert.base64Decode('CgpSZW5hbWVGaWxlEg4KAmlkGAEgAigDUgJpZBISCgRuYW1lGAIgAigJUgRuYW1l');
@$core.Deprecated('Use renameFileRespDescriptor instead')
const RenameFileResp$json = const {
  '1': 'RenameFileResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
  ],
};

/// Descriptor for `RenameFileResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameFileRespDescriptor = $convert.base64Decode('Cg5SZW5hbWVGaWxlUmVzcBIOCgJydBgBIAIoBVICcnQ=');
@$core.Deprecated('Use deleteFileDescriptor instead')
const DeleteFile$json = const {
  '1': 'DeleteFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileDescriptor = $convert.base64Decode('CgpEZWxldGVGaWxlEg4KAmlkGAEgAigDUgJpZA==');
@$core.Deprecated('Use deleteFileRespDescriptor instead')
const DeleteFileResp$json = const {
  '1': 'DeleteFileResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFileResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileRespDescriptor = $convert.base64Decode('Cg5EZWxldGVGaWxlUmVzcBIOCgJydBgBIAIoBVICcnQSDgoCaWQYAiABKANSAmlk');
@$core.Deprecated('Use saveGestureDescriptor instead')
const SaveGesture$json = const {
  '1': 'SaveGesture',
  '2': const [
    const {'1': 'isGesture', '3': 1, '4': 2, '5': 8, '10': 'isGesture'},
    const {'1': 'gesture', '3': 2, '4': 2, '5': 12, '10': 'gesture'},
    const {'1': 'validityGesture', '3': 3, '4': 2, '5': 5, '10': 'validityGesture'},
  ],
};

/// Descriptor for `SaveGesture`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveGestureDescriptor = $convert.base64Decode('CgtTYXZlR2VzdHVyZRIcCglpc0dlc3R1cmUYASACKAhSCWlzR2VzdHVyZRIYCgdnZXN0dXJlGAIgAigMUgdnZXN0dXJlEigKD3ZhbGlkaXR5R2VzdHVyZRgDIAIoBVIPdmFsaWRpdHlHZXN0dXJl');
@$core.Deprecated('Use saveGestureRespDescriptor instead')
const SaveGestureResp$json = const {
  '1': 'SaveGestureResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'isGesture', '3': 2, '4': 1, '5': 8, '10': 'isGesture'},
    const {'1': 'gesture', '3': 3, '4': 1, '5': 12, '10': 'gesture'},
    const {'1': 'validityGesture', '3': 4, '4': 1, '5': 5, '10': 'validityGesture'},
  ],
};

/// Descriptor for `SaveGestureResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveGestureRespDescriptor = $convert.base64Decode('Cg9TYXZlR2VzdHVyZVJlc3ASDgoCcnQYASACKAVSAnJ0EhwKCWlzR2VzdHVyZRgCIAEoCFIJaXNHZXN0dXJlEhgKB2dlc3R1cmUYAyABKAxSB2dlc3R1cmUSKAoPdmFsaWRpdHlHZXN0dXJlGAQgASgFUg92YWxpZGl0eUdlc3R1cmU=');
@$core.Deprecated('Use getScoresDescriptor instead')
const GetScores$json = const {
  '1': 'GetScores',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 2, '5': 5, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 2, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `GetScores`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScoresDescriptor = $convert.base64Decode('CglHZXRTY29yZXMSFAoFbGltaXQYASACKAVSBWxpbWl0EhYKBm9mZnNldBgCIAIoBVIGb2Zmc2V0');
@$core.Deprecated('Use getScoresRespDescriptor instead')
const GetScoresResp$json = const {
  '1': 'GetScoresResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.pb.Score', '10': 'scores'},
    const {'1': 'score', '3': 3, '4': 2, '5': 3, '10': 'score'},
  ],
};

/// Descriptor for `GetScoresResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScoresRespDescriptor = $convert.base64Decode('Cg1HZXRTY29yZXNSZXNwEg4KAnJ0GAEgAigFUgJydBIhCgZzY29yZXMYAiADKAsyCS5wYi5TY29yZVIGc2NvcmVzEhQKBXNjb3JlGAMgAigDUgVzY29yZQ==');
@$core.Deprecated('Use getOperatesDescriptor instead')
const GetOperates$json = const {
  '1': 'GetOperates',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 2, '5': 5, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 2, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `GetOperates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOperatesDescriptor = $convert.base64Decode('CgtHZXRPcGVyYXRlcxIUCgVsaW1pdBgBIAIoBVIFbGltaXQSFgoGb2Zmc2V0GAIgAigFUgZvZmZzZXQ=');
@$core.Deprecated('Use getOperatesRespDescriptor instead')
const GetOperatesResp$json = const {
  '1': 'GetOperatesResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'operates', '3': 2, '4': 3, '5': 11, '6': '.pb.Operate', '10': 'operates'},
  ],
};

/// Descriptor for `GetOperatesResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOperatesRespDescriptor = $convert.base64Decode('Cg9HZXRPcGVyYXRlc1Jlc3ASDgoCcnQYASACKAVSAnJ0EicKCG9wZXJhdGVzGAIgAygLMgsucGIuT3BlcmF0ZVIIb3BlcmF0ZXM=');
@$core.Deprecated('Use getTrashDescriptor instead')
const GetTrash$json = const {
  '1': 'GetTrash',
};

/// Descriptor for `GetTrash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrashDescriptor = $convert.base64Decode('CghHZXRUcmFzaA==');
@$core.Deprecated('Use getTrashRespDescriptor instead')
const GetTrashResp$json = const {
  '1': 'GetTrashResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'trashes', '3': 2, '4': 3, '5': 11, '6': '.pb.Trash', '10': 'trashes'},
  ],
};

/// Descriptor for `GetTrashResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrashRespDescriptor = $convert.base64Decode('CgxHZXRUcmFzaFJlc3ASDgoCcnQYASACKAVSAnJ0EiMKB3RyYXNoZXMYAiADKAsyCS5wYi5UcmFzaFIHdHJhc2hlcw==');
@$core.Deprecated('Use restoreTrashDescriptor instead')
const RestoreTrash$json = const {
  '1': 'RestoreTrash',
  '2': const [
    const {'1': 'accountId', '3': 1, '4': 1, '5': 3, '10': 'accountId'},
    const {'1': 'fileId', '3': 2, '4': 1, '5': 3, '10': 'fileId'},
  ],
};

/// Descriptor for `RestoreTrash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreTrashDescriptor = $convert.base64Decode('CgxSZXN0b3JlVHJhc2gSHAoJYWNjb3VudElkGAEgASgDUglhY2NvdW50SWQSFgoGZmlsZUlkGAIgASgDUgZmaWxlSWQ=');
@$core.Deprecated('Use restoreTrashRespDescriptor instead')
const RestoreTrashResp$json = const {
  '1': 'RestoreTrashResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'snapshot', '3': 2, '4': 1, '5': 11, '6': '.pb.AccountSnapshot', '10': 'snapshot'},
    const {'1': 'file', '3': 3, '4': 1, '5': 11, '6': '.pb.File', '10': 'file'},
    const {'1': 'score', '3': 4, '4': 1, '5': 3, '10': 'score'},
  ],
};

/// Descriptor for `RestoreTrashResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreTrashRespDescriptor = $convert.base64Decode('ChBSZXN0b3JlVHJhc2hSZXNwEg4KAnJ0GAEgAigFUgJydBIvCghzbmFwc2hvdBgCIAEoCzITLnBiLkFjY291bnRTbmFwc2hvdFIIc25hcHNob3QSHAoEZmlsZRgDIAEoCzIILnBiLkZpbGVSBGZpbGUSFAoFc2NvcmUYBCABKANSBXNjb3Jl');
@$core.Deprecated('Use registerDescriptor instead')
const Register$json = const {
  '1': 'Register',
};

/// Descriptor for `Register`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDescriptor = $convert.base64Decode('CghSZWdpc3Rlcg==');
@$core.Deprecated('Use registerRespDescriptor instead')
const RegisterResp$json = const {
  '1': 'RegisterResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'bytes', '3': 3, '4': 1, '5': 12, '10': 'bytes'},
    const {'1': 'userData', '3': 4, '4': 1, '5': 11, '6': '.pb.UserData', '10': 'userData'},
  ],
};

/// Descriptor for `RegisterResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRespDescriptor = $convert.base64Decode('CgxSZWdpc3RlclJlc3ASDgoCcnQYASACKAVSAnJ0EhYKBnVzZXJJZBgCIAEoA1IGdXNlcklkEhQKBWJ5dGVzGAMgASgMUgVieXRlcxIoCgh1c2VyRGF0YRgEIAEoCzIMLnBiLlVzZXJEYXRhUgh1c2VyRGF0YQ==');
@$core.Deprecated('Use getUserDataDescriptor instead')
const GetUserData$json = const {
  '1': 'GetUserData',
};

/// Descriptor for `GetUserData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserDataDescriptor = $convert.base64Decode('CgtHZXRVc2VyRGF0YQ==');
@$core.Deprecated('Use getUserDataRespDescriptor instead')
const GetUserDataResp$json = const {
  '1': 'GetUserDataResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'userData', '3': 2, '4': 1, '5': 11, '6': '.pb.UserData', '10': 'userData'},
  ],
};

/// Descriptor for `GetUserDataResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserDataRespDescriptor = $convert.base64Decode('Cg9HZXRVc2VyRGF0YVJlc3ASDgoCcnQYASACKAVSAnJ0EigKCHVzZXJEYXRhGAIgASgLMgwucGIuVXNlckRhdGFSCHVzZXJEYXRh');
@$core.Deprecated('Use loadAssetsDescriptor instead')
const LoadAssets$json = const {
  '1': 'LoadAssets',
};

/// Descriptor for `LoadAssets`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadAssetsDescriptor = $convert.base64Decode('CgpMb2FkQXNzZXRz');
@$core.Deprecated('Use loadAssetsRespDescriptor instead')
const LoadAssetsResp$json = const {
  '1': 'LoadAssetsResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'applications', '3': 2, '4': 3, '5': 11, '6': '.pb.Application', '10': 'applications'},
  ],
};

/// Descriptor for `LoadAssetsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadAssetsRespDescriptor = $convert.base64Decode('Cg5Mb2FkQXNzZXRzUmVzcBIOCgJydBgBIAIoBVICcnQSMwoMYXBwbGljYXRpb25zGAIgAygLMg8ucGIuQXBwbGljYXRpb25SDGFwcGxpY2F0aW9ucw==');
@$core.Deprecated('Use inAppPurchaseDescriptor instead')
const InAppPurchase$json = const {
  '1': 'InAppPurchase',
  '2': const [
    const {'1': 'purchaseID', '3': 1, '4': 2, '5': 9, '10': 'purchaseID'},
    const {'1': 'productID', '3': 2, '4': 2, '5': 9, '10': 'productID'},
    const {'1': 'receipt', '3': 3, '4': 2, '5': 9, '10': 'receipt'},
    const {'1': 'source', '3': 4, '4': 2, '5': 9, '10': 'source'},
    const {'1': 'transactionDate', '3': 5, '4': 2, '5': 9, '10': 'transactionDate'},
  ],
};

/// Descriptor for `InAppPurchase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inAppPurchaseDescriptor = $convert.base64Decode('Cg1JbkFwcFB1cmNoYXNlEh4KCnB1cmNoYXNlSUQYASACKAlSCnB1cmNoYXNlSUQSHAoJcHJvZHVjdElEGAIgAigJUglwcm9kdWN0SUQSGAoHcmVjZWlwdBgDIAIoCVIHcmVjZWlwdBIWCgZzb3VyY2UYBCACKAlSBnNvdXJjZRIoCg90cmFuc2FjdGlvbkRhdGUYBSACKAlSD3RyYW5zYWN0aW9uRGF0ZQ==');
@$core.Deprecated('Use inAppPurchaseRespDescriptor instead')
const InAppPurchaseResp$json = const {
  '1': 'InAppPurchaseResp',
  '2': const [
    const {'1': 'rt', '3': 1, '4': 2, '5': 5, '10': 'rt'},
    const {'1': 'isValid', '3': 2, '4': 1, '5': 8, '10': 'isValid'},
    const {'1': 'score', '3': 3, '4': 1, '5': 3, '10': 'score'},
  ],
};

/// Descriptor for `InAppPurchaseResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inAppPurchaseRespDescriptor = $convert.base64Decode('ChFJbkFwcFB1cmNoYXNlUmVzcBIOCgJydBgBIAIoBVICcnQSGAoHaXNWYWxpZBgCIAEoCFIHaXNWYWxpZBIUCgVzY29yZRgDIAEoA1IFc2NvcmU=');
@$core.Deprecated('Use playloadDescriptor instead')
const Playload$json = const {
  '1': 'Playload',
  '2': const [
    const {'1': 'msg', '3': 9, '4': 2, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `Playload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playloadDescriptor = $convert.base64Decode('CghQbGF5bG9hZBIQCgNtc2cYCSACKAlSA21zZw==');
@$core.Deprecated('Use sharedDataDescriptor instead')
const SharedData$json = const {
  '1': 'SharedData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'key', '3': 3, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'iv', '3': 4, '4': 2, '5': 12, '10': 'iv'},
  ],
};

/// Descriptor for `SharedData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharedDataDescriptor = $convert.base64Decode('CgpTaGFyZWREYXRhEg4KAmlkGAEgAigDUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEhAKA2tleRgDIAIoDFIDa2V5Eg4KAml2GAQgAigMUgJpdg==');
