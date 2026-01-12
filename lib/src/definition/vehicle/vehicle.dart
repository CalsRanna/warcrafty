import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Vehicle 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vehicle = DbcStructureDefinition(
  name: 'Vehicle',
  format: 'niffffiiiiiiiifffffffffffffffssssfifiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TurnSpeed', description: 'TurnSpeed', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'PitchSpeed', description: 'PitchSpeed', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'PitchMin', description: 'PitchMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'PitchMax', description: 'PitchMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'SeatID0', description: 'SeatID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SeatID1', description: 'SeatID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SeatID2', description: 'SeatID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'SeatID3', description: 'SeatID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'SeatID4', description: 'SeatID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SeatID5', description: 'SeatID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SeatID6', description: 'SeatID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SeatID7', description: 'SeatID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'MouseLookOffsetPitch', description: 'MouseLookOffsetPitch', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'CameraFadeDistScalarMin', description: 'CameraFadeDistScalarMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'CameraFadeDistScalarMax', description: 'CameraFadeDistScalarMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'CameraPitchOffset', description: 'CameraPitchOffset', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'FacingLimitRight', description: 'FacingLimitRight', format: DbcFieldFormat.float),
    FieldDefinition(index: 19, name: 'FacingLimitLeft', description: 'FacingLimitLeft', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'MsslTrgtTurnLingering', description: 'MsslTrgtTurnLingering', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'MsslTrgtPitchLingering', description: 'MsslTrgtPitchLingering', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'MsslTrgtMouseLingering', description: 'MsslTrgtMouseLingering', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'MsslTrgtEndOpacity', description: 'MsslTrgtEndOpacity', format: DbcFieldFormat.float),
    FieldDefinition(index: 24, name: 'MsslTrgtArcSpeed', description: 'MsslTrgtArcSpeed', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'MsslTrgtArcRepeat', description: 'MsslTrgtArcRepeat', format: DbcFieldFormat.float),
    FieldDefinition(index: 26, name: 'MsslTrgtArcWidth', description: 'MsslTrgtArcWidth', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'MsslTrgtImpactRadius0', description: 'MsslTrgtImpactRadius 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'MsslTrgtImpactRadius1', description: 'MsslTrgtImpactRadius 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 29, name: 'MsslTrgtArcTexture', description: 'MsslTrgtArcTexture', format: DbcFieldFormat.string),
    FieldDefinition(index: 30, name: 'MsslTrgtImpactTexture', description: 'MsslTrgtImpactTexture', format: DbcFieldFormat.string),
    FieldDefinition(index: 31, name: 'MsslTrgtImpactModel0', description: 'MsslTrgtImpactModel 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 32, name: 'MsslTrgtImpactModel1', description: 'MsslTrgtImpactModel 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 33, name: 'CameraYawOffset', description: 'CameraYawOffset', format: DbcFieldFormat.float),
    FieldDefinition(index: 34, name: 'UiLocomotionType', description: 'UiLocomotionType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'MsslTrgtImpactTexRadius', description: 'MsslTrgtImpactTexRadius', format: DbcFieldFormat.float),
    FieldDefinition(index: 36, name: 'VehicleUIIndicatorID', description: 'VehicleUIIndicatorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 37, name: 'PowerDisplayID0', description: 'PowerDisplayID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 38, name: 'PowerDisplayID1', description: 'PowerDisplayID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 39, name: 'PowerDisplayID2', description: 'PowerDisplayID 2', format: DbcFieldFormat.intType),
  ],
);
