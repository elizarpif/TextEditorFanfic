unit instruction;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RichMemo, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Menus;

type

  { Tinstr }

  Tinstr = class(TForm)
    Image: TImage;
    MainMenu: TMainMenu;
    MenuItem_exit: TMenuItem;
    StaticText: TStaticText;
    procedure MenuItem_exitClick(Sender: TObject);
    procedure StaticTextClick(Sender: TObject);
  private

  public

  end;

var
  instr: Tinstr;

implementation

{$R *.lfm}

{ Tinstr }

procedure Tinstr.StaticTextClick(Sender: TObject);
begin

end;

procedure Tinstr.MenuItem_exitClick(Sender: TObject);
begin
  instr.close;
end;

end.

