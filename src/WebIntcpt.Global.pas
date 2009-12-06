unit WebIntcpt.Global;

interface

uses
  IniFiles,
  CILib.Log;

function Network_IsStopped: Boolean;

{$I svn_revision.inc}

const
  _DEFAULT_CONFIG_FILE = 'WebServer.ini';

var
  sConfig: TIniFile;
  sLog: TLogService;
  sConsoleLogger: TConsoleLogAppender;
  sFileLogger: TFileLogAppender;

implementation

function Network_IsStopped: Boolean;
begin
  Result := False;
end;

initialization
  sLog := TLogService.Create;
  sLog.FilterLevel := LogDebug;
  sConsoleLogger := TConsoleLogAppender.Create(sLog);
  sFileLogger := TFileLogAppender.Create(sLog);
  sFileLogger.OpenLogFile('WebServer.log');

finalization
  sConsoleLogger := nil;
  sFileLogger := nil;
  sLog.Free;

end.
