unit WebIntcpt.Httpd;

interface

uses
  Windows, SysUtils,
  IdHTTPServer,
  OtlTask, OtlTaskControl;

type
  TWIHttpd = class(TObject)
  private
    httpsvr: TIdHTTPServer;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadConfig;
    procedure Startup;
    procedure Shutdown;
    property Active: Boolean read GetActive write SetActive;
  end;

var
  sHttpd: TWIHttpd;

implementation

uses
  WebIntcpt.Global;

constructor TWIHttpd.Create;
begin
  httpsvr := TIdHTTPServer.Create;

end;

destructor TWIHttpd.Destroy;
begin
  Shutdown;

  httpsvr.Free;

  inherited;
end;

function TWIHttpd.GetActive: Boolean;
begin
  Result := httpsvr.Active;
end;

procedure TWIHttpd.LoadConfig;
begin
  // TODO -cMM: TWIHttpd.LoadConfig default body inserted
end;

procedure TWIHttpd.SetActive(const Value: Boolean);
begin
  if Value then
    Startup
  else
    Shutdown;
end;

procedure TWIHttpd.Startup;
begin
  httpsvr.Active := True;
end;

procedure TWIHttpd.Shutdown;
begin
  httpsvr.Active := False;
end;

end.
