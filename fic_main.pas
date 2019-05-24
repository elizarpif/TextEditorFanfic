unit fic_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons;

type

  { Tproect }

  Tproect = class(TForm)
    Image: TImage;
    Image_list: TImage;
    Image_osn: TImage;
    Image_phone: TImage;
    Image_ptn: TImage;
    Label_create: TLabel;
    Label_fic: TLabel;
    Label_open: TLabel;
    Label_rig: TLabel;
    OpenDia: TOpenDialog;
    SelectDirectoryDial: TSelectDirectoryDialog;
    procedure Label_createClick(Sender: TObject);
    procedure Label_openClick(Sender: TObject);
    procedure Label_openMouseEnter(Sender: TObject);
    procedure Label_openMouseLeave(Sender: TObject);
    procedure Label_createMouseEnter(Sender: TObject);
    procedure Label_createMouseLeave(Sender: TObject);
  private

  public

  end;

var
  proect: Tproect;
  global_s, Name, sfile: string;
  flag: integer;

implementation

uses
  edit_note, new_papka;

{$R *.lfm}

{ Tproect }

procedure Tproect.Label_openMouseEnter(Sender: TObject);
begin
  Label_open.font.Color := clred;
end;


procedure Tproect.Label_createClick(Sender: TObject);
begin
  proect.Visible := False;
  add_papka.Show();
end;



procedure Tproect.Label_openClick(Sender: TObject);
begin
  if SelectDirectoryDial.Execute then
  begin
    global_s := SelectDirectoryDial.FileName;
    flag := 2;
    sfile := '';
    add.Show;
    proect.Width := 0;
    proect.Height := 0;
    proect.top := 3000;
  end;
end;

procedure Tproect.Label_openMouseLeave(Sender: TObject);
begin
  Label_open.font.Color := clblack;
end;

procedure Tproect.Label_createMouseEnter(Sender: TObject);
begin
  Label_create.font.Color := clred;
end;

procedure Tproect.Label_createMouseLeave(Sender: TObject);
begin
  Label_create.font.Color := clblack;
end;

end.
