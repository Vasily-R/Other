unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i: integer;
  a,b,c,d,n1,n2,n3,e: integer; { boolean; }
  up{per_case}, low{er_case}, let{ters}, num{bers}: integer;
implementation

{$R *.dfm}

uses Unit1, Unit3;



procedure TForm2.Button1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin

  Label3.Caption:='';
  a:=0; b:=0; c:=0; e:=0; n1:=0; n2:=0;

  {if (CheckBox1.State=cbChecked) and (length(Edit3.Text)=0) then  label8.Caption:='Введите почту!'
  else
  if (CheckBox1.State=cbChecked) and (length(Edit3.Text)>0)  then
  begin
    Label8.Caption:='';
    n2:=1;
  end;}


  if length(Edit1.Text)=0 then label5.Caption:='Введите логин!'
  else
  begin
    Label5.Caption:='';
    n1:=1;
  end;

  if length(Edit2.Text)=0 then
  begin
  Label6.Caption:='Введите пароль!';
  Label4.Caption:='';
  end
  else
  begin
    {Label6.Caption:=''; }
    if length(Edit2.Text)<2{10} then
    begin
      Label6.Caption:='';
      Label4.Caption:='Пароль должен содержать не менее 10 символов!'   {Label3.Caption}
    end
    else
    begin
      e:=1;
      Label4.Caption:='';   {Label3.Caption}
    end;
  end;

  for i:=1 to length(Edit2.Text) do
  begin
    if Edit2.Text[i] in ['0'..'9'] then a:=1;//если есть цифры
    if Edit2.Text[i] in ['A'..'Z'] then b:=1;//если есть прописные буквы
    if Edit2.Text[i] in ['a'..'z'] then c:=1;//если есть строчные буквы
  end;

  if length(Edit2.Text)>0 then
  begin
    if (a=0) then Label3.Caption:='     Пароль должен состоять хотя бы из одной цифры (числа)!';
    if (b=0) then Label3.Caption:='В пароле должна быть хотя бы одна прописная латинская буква!';
    if (c=0) then Label3.Caption:='Пароль должен иметь хотя бы одну строчную латинскую букву!';
  end;

  if (a=0) or (b=0) or (c=0) or (e=0) or (n1=0) {or (n2=0)} then
  begin
    {Label3.Visible:=True;}
    Button1.Enabled:=False;
  end
  else
  begin
    {Label3.Visible:=False;}
    Button1.Enabled:=True;
    Label3.Caption:='';
    Label6.Caption:='';
  end;

end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key in [#32]) then key:=#0;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
   Label3.Caption:='';
   Label4.Caption:='';
   Label5.Caption:='Пустое поле!';
   Label6.Caption:='Пустое поле!';
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form1.close;
end;

end.
