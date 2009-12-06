unit WebIntcpt.Console;

interface

uses
  Windows, SysUtils, CILib.Utils,
  WebIntcpt.Global, OtlTask;

procedure CommandProcessor(const task: IOmniTask);

procedure ConsoleRun;

implementation

uses
  WebIntcpt.Httpd;

procedure CommandProcessor(const task: IOmniTask);
begin
  while sHttpd.Active do
  begin

  end;
end;

procedure ConsoleRun;
var
  command: string;
begin
  while sHttpd.Active do
  begin
    Write('server>');
    Flush(Output);
    Readln(command);
    if command = '' then
      Continue;

    sLog.OutDebug('CMD: '+ command);
    //todo: queue this command to network thread.
  end;
end;

initialization


end.
