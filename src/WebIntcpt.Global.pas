unit WebIntcpt.Global;

interface

uses
  IniFiles,
  CILib.Log;

{.$I _revision.inc}

const
  _DEFAULT_CONFIG_FILE = 'WebServer.ini';

var
  sConfig: TIniFile;
  sLog: ILogService;
  sConsoleLogger: TConsoleLogAppender;
  sFileLogger: TFileLogAppender;

implementation

initialization
  sLog := TLogService.Create;

  sConsoleLogger := TConsoleLogAppender.Create(sLog);
  sConsoleLogger.FilterLevel := LogDebug;

  sFileLogger := TFileLogAppender.Create(sLog);
  sFileLogger.FilterLevel := LogDebug;
  sFileLogger.OpenLogFile('WebServer.log');

finalization
  sConsoleLogger := nil;
  sFileLogger := nil;

  sLog := nil;

end.
