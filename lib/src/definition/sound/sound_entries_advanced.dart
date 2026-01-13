import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SoundEntriesAdvanced 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEntriesAdvanced = DbcSchema(
  name: 'SoundEntriesAdvanced',
  format: 'nifiiiiiiiiifffffiiffffs',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundEntryID', description: 'SoundEntryID', type: FieldType.int32),
    Field(index: 2, name: 'InnerRadius2D', description: 'InnerRadius2D', type: FieldType.float),
    Field(index: 3, name: 'TimeA', description: 'TimeA', type: FieldType.int32),
    Field(index: 4, name: 'TimeB', description: 'TimeB', type: FieldType.int32),
    Field(index: 5, name: 'TimeC', description: 'TimeC', type: FieldType.int32),
    Field(index: 6, name: 'TimeD', description: 'TimeD', type: FieldType.int32),
    Field(index: 7, name: 'RandomOffsetRange', description: 'RandomOffsetRange', type: FieldType.int32),
    Field(index: 8, name: 'Usage', description: 'Usage', type: FieldType.int32),
    Field(index: 9, name: 'TimeIntervalMin', description: 'TimeIntervalMin', type: FieldType.int32),
    Field(index: 10, name: 'TimeIntervalMax', description: 'TimeIntervalMax', type: FieldType.int32),
    Field(index: 11, name: 'VolumeSliderCategory', description: 'VolumeSliderCategory', type: FieldType.int32),
    Field(index: 12, name: 'DuckToSFX', description: 'DuckToSFX', type: FieldType.float),
    Field(index: 13, name: 'DuckToMusic', description: 'DuckToMusic', type: FieldType.float),
    Field(index: 14, name: 'DuckToAmbience', description: 'DuckToAmbience', type: FieldType.float),
    Field(index: 15, name: 'InnerRadiusOfInfluence', description: 'InnerRadiusOfInfluence', type: FieldType.float),
    Field(index: 16, name: 'OuterRadiusOfInfluence', description: 'OuterRadiusOfInfluence', type: FieldType.float),
    Field(index: 17, name: 'TimeToDuck', description: 'TimeToDuck', type: FieldType.int32),
    Field(index: 18, name: 'TimeToUnduck', description: 'TimeToUnduck', type: FieldType.int32),
    Field(index: 19, name: 'InsideAngle', description: 'InsideAngle', type: FieldType.float),
    Field(index: 20, name: 'OutsideAngle', description: 'OutsideAngle', type: FieldType.float),
    Field(index: 21, name: 'OutsideVolume', description: 'OutsideVolume', type: FieldType.float),
    Field(index: 22, name: 'OuterRadius2D', description: 'OuterRadius2D', type: FieldType.float),
    Field(index: 23, name: 'Name', description: 'Name', type: FieldType.string),
  ],
);
