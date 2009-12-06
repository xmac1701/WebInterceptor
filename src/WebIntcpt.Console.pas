unit WebIntcpt.Console;

interface

uses
  Windows, SysUtils, CILib.Utils,
  WebIntcpt.Global;

procedure ConsoleRun;

implementation

procedure ConsoleRun;
var
  command: string;
begin
  while not Network_IsStopped() do
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
