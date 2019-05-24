unit search;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, Menus;

type

  { Tsearch_tag }

  Tsearch_tag = class(TForm)
    Edit_entertag: TEdit;
    Image: TImage;
    ProgressBar: TProgressBar;
    Static_entertag: TStaticText;
    Static_ent: TStaticText;
    Timer: TTimer;
    TreeV: TTreeView;
    procedure Edit_entertagKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure TreeVSelectionChanged(Sender: TObject);
  private

  public

  end;

var
  search_tag: Tsearch_tag;
  global_s: string;

implementation

{$R *.lfm}
uses edit_note, fic_main;

{ Tsearch_tag }
procedure getfiles();
var
  node: ttreenode;
  strin: TStringList;
  Info: TSearchRec;
  Count: longint;
  j: integer;
  s: string;
begin
  Count := 0;
  search_tag.treev.CleanupInstance;
  search_tag.treev.items.CleanupInstance;
  Strin := TStringList.Create;
  search_tag.ProgressBar.Position := 0;
  search_tag.timer.Enabled := True;
  search_tag.ProgressBar.Visible := True;
  FindAllFiles(strin, 'C:\Users\', search_tag.Edit_entertag.Text + '.tag', True);
  search_tag.ProgressBar.Position := 386;
  search_tag.timer.Enabled := False;
  if strin.Count = 0 then
  begin
    search_tag.ProgressBar.Visible := False;
    search_tag.treev.Visible := False;
    search_tag.Static_ent.Visible := False;
    ShowMessage('Тегов не найдено');
    exit;
  end;
  search_tag.Static_ent.Visible := True;
  for i := 0 to strin.Count - 1 do
  begin
    s := search_tag.Edit_entertag.Text + '.tag';
    s := copy(strin.strings[i], 0, length(strin.strings[i]) - length(s) - 1);
    if i = 0 then
      node := search_tag.TreeV.Items.AddFirst(nil, s)
    else
      search_tag.TreeV.Items.Add(node, s);
  end;
end;


procedure Tsearch_tag.Edit_entertagKeyPress(Sender: TObject; var Key: char);
begin
  if (key = ' ') or (key = '#') or (key = ',') or (key = '.') then
    key := #0
  else if key = #13 then
  begin
    treev.Visible := True;
    Static_ent.Visible := True;
    getfiles();
  end
  else
    key := key;
end;

procedure Tsearch_tag.FormCreate(Sender: TObject);
begin
  Timer.Enabled := False;
end;

procedure Tsearch_tag.FormShow(Sender: TObject);
begin
  treev.Items.Clear;
  treev.Visible := False;
  Timer.Enabled := False;
  ProgressBar.Visible := False;
  Static_ent.Visible := False;
end;


procedure Tsearch_tag.TimerTimer(Sender: TObject);
begin
  ProgressBar.position := ProgressBar.position + 1;
end;

procedure Tsearch_tag.TreeVSelectionChanged(Sender: TObject);
var
  s: string;
  i, j: integer;
begin
  if treev.Visible = False then
    exit;
  j := 0;
  for i := 0 to treev.items.Count - 1 do
  begin
    if treev.Items.Item[i].Selected = True then
      Inc(j);
  end;
  if (j = 0) then
    exit;
  j := 0;
  for i := length(treev.Selected.Text) downto 1 do
  begin
    if treev.Selected.Text[i] = '\' then
      break;
    Inc(j);
  end;
  st := copy(treev.Selected.Text, 0, i - 1);
  treev.Items.Clear;
  treev.CleanupInstance;
  global_s := st;
  fic_main.flag := 3;
  ADD.Visible := False;
  add.Visible := True;
  treev.Visible := False;
  Static_ent.Visible := False;
  search_tag.Visible := False;
  search_tag.Close;
end;

end.
