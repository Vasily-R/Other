unit Unit1;

interface

uses
  //Winapi.Windows,
  //Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  //System.Types, //
  //System.UITypes, //

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  System.Generics.Collections,
  ControllersUnit,
  PhisicsControllerUnit,
  Vcl.ExtCtrls, //
  Vcl.stdctrls; //


// FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs;
// подключение библиотеки

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    list: TList<string>;
    labels: TList<Tlabel>;
    // Panels: TList<TPanel>;
    /// <link>aggregation</link>
    Controller1: Controllers;
    procedure createPanels(list: TList<String>);
  public
    procedure onClick1(Sender: TObject);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.createPanels(list: TList<String>);
var
  i: integer;
  s: string;
begin
  i := 0;
  labels := TList<Tlabel>.create;
  // Panels := TList<TPanel>.create;
  self.list := TList<String>.create;
  self.list := list;
  for s in list do
  begin
    { Panels } labels.Add(Tlabel { TPanel }.create(self));
    with { Panels } labels.Last do
    begin
      parent := self;
      { top } position.y:= i * 41;
      { caption } text := s;
      width := 300;
      onClick := onClick1;
    end;
    i := i + 1;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  list: TList<String>;
begin
  Controller1 := PhisicsController.create;
  list := TList<String>.create;
  list := Controller1.getMenu;
  // createPanels(Controller1.getMenu);
  createPanels(list);
end;

procedure TForm1.onClick1(Sender: TObject);
begin
  Controller1.setTest((Sender as Tlabel { TPanel } ).text { Caption } );
end;

end.
