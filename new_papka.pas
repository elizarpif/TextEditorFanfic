unit new_papka;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { Tadd_papka }

  Tadd_papka = class(TForm)
    button_save: TBitBtn;
    Check_janres: TCheckGroup;
    Check_types: TCheckGroup;
    Edit_name: TEdit;
    Edit_tag: TEdit;
    Image: TImage;
    label_annot: TStaticText;
    Label_count: TLabel;
    label_janr: TStaticText;
    label_tag: TStaticText;
    label_type: TStaticText;
    Memo_annotation: TMemo;
    nameofpart_label: TStaticText;
    SaveDia: TSaveDialog;
    SeleDir: TSelectDirectoryDialog;
    procedure button_saveClick(Sender: TObject);
    procedure Edit_tagKeyPress(Sender: TObject; var Key: char);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Memo_annotationChange(Sender: TObject);
    procedure Memo_annotationKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  add_papka: Tadd_papka;
  global_s, Name: string;
  flag: integer;

implementation

uses
  edit_note, fic_main;

{$R *.lfm}


{ Tadd_papka }


procedure Tadd_papka.Memo_annotationChange(Sender: TObject);
var
  Count: integer;
begin
  Count := Memo_annotation.Lines.Text.Length;
  Label_count.Caption := IntToStr(500 - Count);
end;

procedure Tadd_papka.Memo_annotationKeyPress(Sender: TObject; var Key: char);
begin
  if label_count.Caption = '0' then
  begin
    if key <> #8 then
      key := #0;

  end;
end;

procedure Tadd_papka.Edit_tagKeyPress(Sender: TObject; var Key: char);
begin
  if (key = ' ') or (key = '#') or (key = ',') or (key = '.') then
    key := #0
  else
    key := key;
end;

procedure Tadd_papka.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if flag = 5 then
    flag := 0
  else if flag = 0 then
  begin

    proect.Show;
    proect.Width := 803;
    proect.top := 171;
    proect.Height := 406;
  end
  else if flag = 2 then
    add.Show()
  else if flag = 3 then
  begin
    add.memo.Clear;
    add.memo_any.Clear;
    add.treev.Items.Clear;
    add.Edit_name.Clear;
    add.edit_any.Clear;
    add.Edit_search.Clear;
    add.Show();
  end;
end;

procedure Error(n: integer);
begin
  case n of
    1:
    begin
      ShowMessage('Ошибка записи в файл!');
    end;
    2: ShowMessage('Не заполнено название!');
  end;
end;

procedure Tadd_papka.button_saveClick(Sender: TObject);
var
  f: textfile;
  i, j: integer;
begin
  if (seledir.Execute) and (seledir.filename <> '') then
  begin
    chdir(seledir.filename);
    CreateDir(seledir.filename + '\' + edit_name.Text);
    global_s := seledir.filename + '\' + edit_name.Text;
    chdir(global_s);
    if edit_name.Text = '' then
    begin
      error(2);
      exit;
    end;
    assignfile(f, edit_name.Text + '.head');
  {$I-}
    rewrite(f);
  {$I+}
    if IOResult <> 0 then
    begin
      Error(1);
      exit;
    end;
    nameofpart_label.Caption;
    writeln(f, nameofpart_label.Caption, ': ', edit_name.Text);
    Write(f, label_type.Caption, ':  ');
    for i := 0 to check_types.items.Count - 1 do
    begin
      if check_types.Checked[i] = True then
      begin
        Write(f, check_types.items.Strings[i], ' ');
        check_types.Checked[i] := False;
      end;
    end;
    writeln(f);
    Write(f, label_janr.Caption, ':  ');
    for i := 0 to check_janres.items.Count - 1 do
    begin
      if check_janres.Checked[i] = True then
      begin
        Write(f, check_janres.items.Strings[i], ' ');
        check_janres.Checked[i] := False;
      end;
    end;
    writeln(f);
    Write(f, label_annot.Caption, ':  ');
    for i := 0 to Memo_annotation.Lines.Count - 1 do
    begin
      writeln(f, Memo_annotation.Lines.Strings[i]);
    end;
    //ПРИДУМАТЬ ДЛЯ ТЕГОВ
    closefile(f);
    assignfile(f, edit_tag.Text + '.tag');
    {$I-}
    rewrite(f);
    {$I+}
    if IOResult <> 0 then
    begin
      ShowMessage('Ошибка тега!');
      exit;
    end;
    closefile(f);
    fic_main.flag := 1;
    add.Show();
    Edit_name.Clear;
    Memo_annotation.Clear;
    Edit_tag.Clear;
    if flag = 2 then
      flag := 3
    else
      flag := 5;
    Close();
  end;
end;

end.
