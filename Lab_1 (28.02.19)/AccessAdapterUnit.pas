unit AccessAdapterUnit;

interface

uses
  Data.DB,
  Data.Win.ADODB,
  System.Generics.Collections,
  AdaptersUnit;

type
  AccessAdapter = class(TInterfacedObject, Adapters)
  private
    caption: string;
    ADOConnection: TADOConnection;
    function getMenu: TList<string>;
    procedure setTest(caption: string);
  published
    constructor create;
  end;

implementation

constructor AccessAdapter.create;
begin
  ADOConnection := TADOConnection.create(nil);
  with (ADOConnection) do
  begin
    Provider := 'Microsoft.ACE.OLEDB.12.0';
    mode := cmShareDenyNone;
    LoginPrompt := false;
    ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
      'Data Source=Phisics.accdb;' + 'persist security info=false';
    connected := true;
  end;
end;

function AccessAdapter.getMenu: TList<string>;
var
  ADOQuery: TADOQuery;
  DataSource: TDataSource;
begin
  result := TList<string>.create;
  ADOQuery := TADOQuery.create(nil);
  with (ADOQuery) do
  begin
    Connection := ADOConnection;
    close;
    sql.Clear;
    sql.Add('SELECT caption FROM Main;');
    open;
    Active := true;
  end;
  ADOQuery.First;
  while not ADOQuery.Eof do
  begin
    result.Add(ADOQuery.FieldByName('caption').AsString);
    ADOQuery.Next;
  end;
  ADOQuery.Free;
end;

procedure AccessAdapter.setTest(caption: string);
begin
    Self.caption:=caption;
end;

end.
