unit edit_personash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls;

type

  { Tpers_edit }

  Tpers_edit = class(TForm)
    Button_del: TButton;
    Image: TImage;
    Memo_role: TMemo;
    SD: TSaveDialog;
    procedure Button_delClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Memo_roleKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
  private

  public

  end;

var
  pers_edit: Tpers_edit;
  s: string;
  flag: integer;

implementation

{$R *.lfm}
uses
  edit_note, fic_main;

{ Tpers_edit }

procedure Tpers_edit.FormShow(Sender: TObject);
begin
  flag := 0;
  Memo_role.Lines.LoadFromFile(edit_note.nameofpers);
end;

procedure Tpers_edit.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  flag := 4;
  memo_role.Clear;
end;

procedure Tpers_edit.Button_delClick(Sender: TObject);
begin
  getdir(3, s);
  DeleteFile(edit_note.nameofpers);
  edit_note.nameofpers := '';
  add.Visible := False;
  fic_main.flag := 4;
  add.Visible := True;
  memo_role.Clear;
  pers_edit.Close;
end;


procedure Tpers_edit.Memo_roleKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  memo_role.Lines.SaveToFile(edit_note.nameofpers);
end;

{ Tpers_edit }


end.

