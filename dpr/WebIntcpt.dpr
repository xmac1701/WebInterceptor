program WebIntcpt;

uses
  FastMM4,
  SysUtils,
  IniFiles,
  CILib.Common,
  CILib.Consts,
  CILib.Types,
  CILib.Log,
  OtlTask,
  OtlTaskControl,
  WebIntcpt.Global in '..\src\WebIntcpt.Global.pas',
  WebIntcpt.Console in '..\src\WebIntcpt.Console.pas',
  WebIntcpt.Httpd in '..\src\WebIntcpt.Httpd.pas';

begin
//todo: 检查命令行参数

//todo: 检查服务

//todo: 打开配置文件
  sConfig := TIniFile.Create(AppFolder + _DEFAULT_CONFIG_FILE);
  sConsoleLogger.ColorNormal := TConsoleColor(sConfig.ReadInteger('Logging', 'NormalColor', 14));
  sConsoleLogger.ColorError := TConsoleColor(sConfig.ReadInteger('Logging', 'ErrorColor', 9));
  sConsoleLogger.ColorDetail := TConsoleColor(sConfig.ReadInteger('Logging', 'ErrorColor', 13));
  sConsoleLogger.ColorDebug := TConsoleColor(sConfig.ReadInteger('Logging', 'ErrorColor', 8));

  sLog.OutNormal('WebInterceptor/' + SVN_REV);
  sLog.OutTitle('');
  sLog.OutTitle('NNNN          NN                                        NN');
  sLog.OutTitle(' NN           NN                                        NN');
  sLog.OutTitle(' NN   NNNNN NNNNNN   NNNN  NNNNNN  NNNN   NNNN  NNNNN NNNNNN  NNNN   NNNNNN');
  sLog.OutTitle(' NN   NN  NN  NN    NN  NN NN  NN NN     NN  NN NN  NN  NN   NN  NN  NN  NN');
  sLog.OutTitle(' NN   NN  NN  NN    NNNNNN NN     NN     NNNNNN NN  NN  NN   NN  NN  NN');
  sLog.OutTitle(' NN   NN  NN  NN    NN     NN     NN     NN     NN  NN  NN   NN  NN  NN');
  sLog.OutTitle(' NN   NN  NN  NN    NNN    NN     NN     NNN    NN  NN  NN   NN  NN  NN');
  sLog.OutTitle('NNNN  NN  NN   NNN   NNNNN NN      NNNN   NNNNN NNNNN    NNN  NNNN   NN');
  sLog.OutTitle('                                                NN');
  sLog.OutTitle('                                                NN');
  sLog.OutTitle('');



//todo: Init Database

//todo: Load config

//todo: check if console enabled.
  ConsoleRun;

//todo: Launch Network socket

//todo: some finalization code

end.
