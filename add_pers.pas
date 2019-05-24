unit add_pers;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { Tnew_pers }

  Tnew_pers = class(TForm)
    age: TStaticText;
    bio: TStaticText;
    Button_save: TButton;
    Edit_age: TEdit;
    Edit_name: TEdit;
    Image: TImage;
    Memo_person: TMemo;
    Memo_bio: TMemo;
    Memo_role: TMemo;
    name_pers: TStaticText;
    person: TStaticText;
    role: TStaticText;
    SD: TSaveDialog;
    SD1: TSaveDialog;
    procedure Button_saveClick(Sender: TObject);
  private

  public

  end;

var
  new_pers: Tnew_pers;
  global_s, Name: string;
  flag: integer;

implementation

{$R *.lfm}
uses
  edit_note, fic_main;

{ Tnew_pers }
procedure Error(n: integer);
begin
  case n of
    1:
    begin
      ShowMessage('Ошибка записи в файл!');
    end;
    2: ShowMessage('Не заполнено имя!');
  end;
end;




procedure Tnew_pers.Button_saveClick(Sender: TObject);
var
  f: textfile;
  i, j: integer;
begin
  chdir(edit_note.global_s);
  if edit_name.Text = '' then
  begin
    error(2);
    exit;
  end;
  assignfile(f, edit_name.Text + '.card');
  {$I-}
  rewrite(f);
  {$I+}
  if IOResult <> 0 then
  begin
    Error(1);
    exit;
  end;
  writeln(f, name_pers.Caption, ': ', edit_name.Text);
  writeln(f, age.Caption, ':  ', edit_age.Text);
  Write(f, person.Caption, ':  ');
  for i := 0 to Memo_person.Lines.Count - 1 do
    writeln(f, Memo_person.Lines.Strings[i]);
  Write(f, bio.Caption, ':  ');
  for i := 0 to Memo_bio.Lines.Count - 1 do
    writeln(f, Memo_bio.Lines.Strings[i]);
  Write(f, role.Caption, ':  ');
  for i := 0 to Memo_role.Lines.Count - 1 do
    writeln(f, Memo_role.Lines.Strings[i]);
  closefile(f);
  fic_main.flag := 4;
  new_pers.Visible := False;
  add.Visible := False;
  add.Visible := True;
  Memo_bio.Clear;
  memo_role.Clear;
  memo_person.Clear;
  Edit_age.Clear;
  Edit_name.Clear;
end;

end.
