unit WebServer.Log;

interface

uses
  Windows, SysUtils,
  CILib.Log,
  Spring.DesignPatterns;

function sLog: TLogService; inline;

implementation

var
  FConsoleLog: TConsoleLog;
  FTextLog: TTextLog;

function sLog: TLogService;
begin
  Result := TSingleton.GetInstance<TLogService>;
end;

initialization
  FConsoleLog := TConsoleLog.Create;
  FTextLog := TTextLog.Create;

  with sLog do
  begin
    AddLogger(FConsoleLog);
    AddLogger(FTextLog);
  end;

end.
