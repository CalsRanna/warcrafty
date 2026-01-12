import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Vehicle 格式字符串

/// Vehicle 结构定义
const vehicle = DbcStructureDefinition(
  name: 'Vehicle',
  format: 'niffffiiiiiiiifffffffffffffffssssfifiixx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '载具 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TurnSpeed', description: '转向速度', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'PitchSpeed', description: '俯仰速度', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'PitchMin', description: '最小俯仰', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'PitchMax', description: '最大俯仰', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'SeatID0', description: '座位 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SeatID1', description: '座位 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SeatID2', description: '座位 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'SeatID3', description: '座位 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'SeatID4', description: '座位 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SeatID5', description: '座位 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SeatID6', description: '座位 ID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SeatID7', description: '座位 ID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'MouseLookOffsetPitch', description: '鼠标视角偏移俯仰', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'CameraFadeDistScalarMin', description: '相机淡出距离标量最小', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'CameraFadeDistScalarMax', description: '相机淡出距离标量最大', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'CameraPitchOffset', description: '相机俯仰偏移', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'FacingLimitRight', description: '面向限制右', format: DbcFieldFormat.float),
    FieldDefinition(index: 19, name: 'FacingLimitLeft', description: '面向限制左', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'MsslTrgtTurnLingering', description: '导弹目标转向持续', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'MsslTrgtPitchLingering', description: '导弹目标俯仰持续', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'MsslTrgtMouseLingering', description: '导弹目标鼠标持续', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'MsslTrgtEndOpacity', description: '导弹目标结束不透明度', format: DbcFieldFormat.float),
    FieldDefinition(index: 24, name: 'MsslTrgtArcSpeed', description: '导弹目标弧线速度', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'MsslTrgtArcRepeat', description: '导弹目标弧线重复', format: DbcFieldFormat.float),
    FieldDefinition(index: 26, name: 'MsslTrgtArcWidth', description: '导弹目标弧线宽度', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'MsslTrgtImpactRadius0', description: '导弹目标影响半径 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'MsslTrgtImpactRadius1', description: '导弹目标影响半径 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 29, name: 'MsslTrgtArcTexture', description: '导弹目标弧线纹理', format: DbcFieldFormat.string),
    FieldDefinition(index: 30, name: 'MsslTrgtImpactTexture', description: '导弹目标影响纹理', format: DbcFieldFormat.string),
    FieldDefinition(index: 31, name: 'MsslTrgtImpactModel0', description: '导弹目标影响模型 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 32, name: 'MsslTrgtImpactModel1', description: '导弹目标影响模型 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 33, name: 'CameraYawOffset', description: '相机偏航偏移', format: DbcFieldFormat.float),
    FieldDefinition(index: 34, name: 'UiLocomotionType', description: 'UI 运动类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'MsslTrgtImpactTexRadius', description: '导弹目标影响纹理半径', format: DbcFieldFormat.float),
    FieldDefinition(index: 36, name: 'UiSeatIndicatorType', description: 'UI 座位指示器类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 37, name: 'PowerDisplayID', description: '能量显示 ID', format: DbcFieldFormat.intType),
  ],
);
