import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundEntriesAdvanced 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEntriesAdvanced = DbcStructureDefinition(
  name: 'SoundEntriesAdvanced',
  format: 'nifiiiiiiiiifffffiiffffs',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundEntryID', description: 'SoundEntryID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'InnerRadius2D', description: 'InnerRadius2D', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'TimeA', description: 'TimeA', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'TimeB', description: 'TimeB', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'TimeC', description: 'TimeC', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'TimeD', description: 'TimeD', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'RandomOffsetRange', description: 'RandomOffsetRange', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Usage', description: 'Usage', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'TimeIntervalMin', description: 'TimeIntervalMin', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'TimeIntervalMax', description: 'TimeIntervalMax', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'VolumeSliderCategory', description: 'VolumeSliderCategory', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'DuckToSFX', description: 'DuckToSFX', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'DuckToMusic', description: 'DuckToMusic', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'DuckToAmbience', description: 'DuckToAmbience', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'InnerRadiusOfInfluence', description: 'InnerRadiusOfInfluence', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'OuterRadiusOfInfluence', description: 'OuterRadiusOfInfluence', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'TimeToDuck', description: 'TimeToDuck', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'TimeToUnduck', description: 'TimeToUnduck', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'InsideAngle', description: 'InsideAngle', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'OutsideAngle', description: 'OutsideAngle', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'OutsideVolume', description: 'OutsideVolume', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'OuterRadius2D', description: 'OuterRadius2D', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
  ],
);
