unit WebIntcpt.Httpd;

interface

uses
  Windows, SysUtils,
  IdHTTPServer,
  OtlTask, OtlTaskControl;

type
  TWIHttpd = class(TObject)
  private
    httpd: TIdHTTPServer;
    taskCtrl: IOmniTaskControl;
  public
    constructor Create;
    procedure RunHttpServer(const task: IOmniTask);
    procedure StartServer;
    procedure StopServer;
  end;

implementation

constructor TWIHttpd.Create;
begin
  httpd := TIdHTTPServer.Create;

end;

procedure TWIHttpd.RunHttpServer(const task: IOmniTask);
begin

end;

procedure TWIHttpd.StartServer;
begin
  taskCtrl := CreateTask(RunHttpServer, 'httpd')
                .Run;
end;

procedure TWIHttpd.StopServer;
begin
  taskCtrl.Terminate(10);
end;

end.
