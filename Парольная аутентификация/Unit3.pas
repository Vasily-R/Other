unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  s1,s2: string;
  i:integer;
implementation

{$R *.dfm}

uses Unit2, Unit1, Unit4;

procedure TForm3.Button1Click(Sender: TObject);
begin

  label1.caption:='';
  if (Edit1.Text<>s1) or (Edit2.Text<>s2) then
  begin
    i:=i+1;
    label1.caption:='Неправильно введен логин или пароль! Осталось '+inttostr(3-i)+' попытки!';
  end
  else
    Form4.ShowModal;
    {label1.caption:='Вы успешно зашли в систему';}

  if i=2 then
  begin
    label1.caption:='';
    label3.caption:='Последняя попытка!';
  end
  else
  if i>2 then form3.Close;


end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key in [#32]) then key:=#0;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  label1.caption:='';
  label3.caption:='';
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  s1:=Form2.Edit1.Text;
  s2:=Form2.Edit2.Text;
end;

end.
