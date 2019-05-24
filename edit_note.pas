unit edit_note;

{$mode objfpc}{$H+}

interface

//uses
//  Classes, SysUtils, FileUtil, RichMemo, Forms, Controls, Graphics, Dialogs,
//  StdCtrls, ExtCtrls, FileCtrl, Buttons, Menus, ComCtrls, LCLIntf,
//  LResources,
//   RichMemoRTF;
uses
  Classes, SysUtils, LCLIntf, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, Menus, LCLproc, LConvEncoding,
  richmemoutils, lazutf8, RichMemo;

type

  { Tadd }

  Tadd = class(TForm)
    add_person: TMenuItem;
    CD: TColorDialog;
    Combofont: TComboBox;
    ComboFonts: TComboBox;
    Edit_search: TEdit;
    Edit_any: TEdit;
    Edit_name: TEdit;
    FontD: TFontDialog;
    Image: TImage;
    Image_search: TImage;
    ImageList: TImageList;
    Image_add: TImage;
    MainMenu: TMainMenu;
    memo: TRichMemo;
    MenuItem_open: TMenuItem;
    MenuItem_buttons: TMenuItem;
    MenuItem_toolbar: TMenuItem;
    MenuItem_tree: TMenuItem;
    MenuItem_otstyp: TMenuItem;
    MenuItem1_delete: TMenuItem;
    MenuItem_razd: TMenuItem;
    MenuItem_any: TMenuItem;
    MenuItem_color: TMenuItem;
    MenuItem_copy: TMenuItem;
    MenuItem_cut: TMenuItem;
    MenuItem_exit: TMenuItem;
    MenuItem_font: TMenuItem;
    MenuItem_fonts: TMenuItem;
    MenuItem_format: TMenuItem;
    MenuItem_redo: TMenuItem;
    MenuItem_select: TMenuItem;
    MenuItem_undo: TMenuItem;
    MenuItem_vstavka: TMenuItem;
    MenuItem_word: TMenuItem;
    MenuItem__: TMenuItem;
    MenuItem_______: TMenuItem;
    MenuItem_________: TMenuItem;
    Menu_color: TMenuItem;
    menu_copy: TMenuItem;
    menu_create: TMenuItem;
    menu_cut: TMenuItem;
    menu_file: TMenuItem;
    Menu_font: TMenuItem;
    menu_instruction: TMenuItem;
    menu_openfile: TMenuItem;
    menu_pers: TMenuItem;
    Menu_pravka: TMenuItem;
    menu_save: TMenuItem;
    Menu_select: TMenuItem;
    Menu_undo: TMenuItem;
    Menu_word: TMenuItem;
    menu_______razzd: TMenuItem;
    menu_______razd: TMenuItem;
    od1: TOpenDialog;
    Popup_del: TPopupMenu;
    popup_memo: TPopupMenu;
    memo_any: TRichMemo;
    savefile: TMenuItem;
    sd1: TSaveDialog;
    ToolBar: TToolBar;
    ToolBar_name: TToolBar;
    ToolBar_any: TToolBar;
    ToolButton_line_: TToolButton;
    ToolButton_razd: TToolButton;
    ToolButton_elserazd: TToolButton;
    ToolButton_razdel: TToolButton;
    ToolButton_search: TToolButton;
    ToolButton_r: TToolButton;
    ToolButton_l: TToolButton;
    ToolButton_c: TToolButton;
    ToolButton_line: TToolButton;
    ToolButton_bold: TToolButton;
    ToolButton_colorsel: TToolButton;
    ToolButton_colortext: TToolButton;
    ToolButton_italic: TToolButton;
    ToolButton_s: TToolButton;
    ToolButton_u: TToolButton;
    TreeV: TTreeView;
    vstavka: TMenuItem;
    procedure add_personClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure button_saveClick(Sender: TObject);
    procedure ComboFontsChange(Sender: TObject);

    procedure CombofontSelect(Sender: TObject);
    procedure ComboFontsSelect(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure Edit_searchEnter(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: char);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image_addClick(Sender: TObject);
    procedure Image_searchClick(Sender: TObject);
    procedure memoChange(Sender: TObject);

    procedure memoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure memoKeyPress(Sender: TObject; var Key: char);
    procedure memoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MemoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure memo_anyKeyPress(Sender: TObject; var Key: char);
    procedure memo_anyKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Memo_anyMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure MenuItem_cptoutfClick(Sender: TObject);
    procedure MenuItem_ansitoutfClick(Sender: TObject);
    procedure MenuItem1_deleteClick(Sender: TObject);
    procedure MenuItem_buttonsClick(Sender: TObject);
    procedure MenuItem_openClick(Sender: TObject);

    procedure MenuItem_toolbarClick(Sender: TObject);
    procedure MenuItem_treeClick(Sender: TObject);
    procedure MenuItem_utftoansiClick(Sender: TObject);
    procedure MenuItem_utftocpClick(Sender: TObject);
    procedure MenuItem_anyClick(Sender: TObject);
    procedure MenuItem_centerClick(Sender: TObject);
    procedure MenuItem_colorClick(Sender: TObject);
    procedure MenuItem_exitClick(Sender: TObject);
    procedure MenuItem_cutClick(Sender: TObject);
    procedure MenuItem_fontsClick(Sender: TObject);
    procedure MenuItem_leftClick(Sender: TObject);
    procedure MenuItem_otstypClick(Sender: TObject);
    procedure MenuItem_redoClick(Sender: TObject);
    procedure MenuItem_rightClick(Sender: TObject);
    procedure MenuItem_selectClick(Sender: TObject);
    procedure Menu_colorClick(Sender: TObject);
    procedure menu_copyClick(Sender: TObject);
    procedure menu_createClick(Sender: TObject);
    procedure menu_cutClick(Sender: TObject);
    procedure menu_instructionClick(Sender: TObject);
    procedure menu_saveClick(Sender: TObject);
    procedure Menu_selectClick(Sender: TObject);
    procedure Menu_undoClick(Sender: TObject);
    procedure Menu_wordClick(Sender: TObject);
    procedure openfileClick(Sender: TObject);
    procedure Menu_fontClick(Sender: TObject);
    procedure savefileClick(Sender: TObject);
    procedure ToolButton_boldClick(Sender: TObject);
    procedure ToolButton_cClick(Sender: TObject);
    procedure ToolButton_colorselClick(Sender: TObject);
    procedure ToolButton_colortextClick(Sender: TObject);
    procedure ToolButton_italicClick(Sender: TObject);
    procedure ToolButton_lClick(Sender: TObject);
    procedure ToolButton_rClick(Sender: TObject);
    procedure ToolButton_sClick(Sender: TObject);
    procedure ToolButton_searchClick(Sender: TObject);
    procedure ToolButton_uClick(Sender: TObject);
    procedure TreeVClick(Sender: TObject);

    procedure TreeVGetSelectedIndex(Sender: TObject; Node: TTreeNode);

    procedure vstavkaClick(Sender: TObject);
    // procedure menu_openClick(Sender: TObject);
  private

  public

  end;

var
  add: Tadd;
  global_s, Name: string;
  flag: integer;
  s, st, s1, nameofpers: string;
  i, j, k: integer;
  SelFontFormat: TFontParams;
  modified: integer;
  Filename: string;
  Filepath: string;
  Saved, flagok: boolean;

implementation

uses
  new_papka, fic_main, search, add_pers, edit_personash, instruction;

{$R *.lfm}

{ Tadd }




procedure Tadd.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //treev.free;
  memo.Clear;
  memo_any.Clear;
  treev.Items.Clear;
  Edit_name.Clear;
  edit_any.Clear;
  Edit_search.Clear;
  proect.Width := 803;
  proect.top := 171;
  proect.Height := 406;
end;

procedure Tadd.FormCreate(Sender: TObject);
var
  m: TParaMetric;
begin
  modified := 1;
  //RegisterRTFLoader;
  Memo.GetParaMetric(Memo.SelStart, m);
  m.FirstLine := 15;
  M.TailIndent := 10;
  m.HeadIndent := 10;
  memo_any.SetParaMetric(memo_any.SelStart, memo_any.SelLength, m);
  Memo.SetParaMetric(Memo.SelStart, Memo.SelLength, m);
end;


procedure getfiles();
var
  node: ttreenode;
  Info: TSearchRec;
  Count: longint;
begin
  Count := 0;
  add.treev.Visible := True;
  add.treev.items.CleanupInstance;
  j := 0;
  for i := length(global_s) downto 1 do
  begin
    if global_s[i] = '\' then
      break;
    Inc(j);
  end;
  st := copy(global_s, i + 1, j);
  node := add.Treev.items.AddFirst(nil, st);
  add.TREEV.items.item[0].ImageIndex := 14;
  node := add.TreeV.items.Item[0];
  if FindFirst(Global_s + '\' + '*.rtf', faAnyFile, Info) = 0 then
  begin
    repeat
      Inc(Count);
      with Info do
      begin
        for i := length(Name) downto 1 do
        begin
          if Name[i] = '.' then
            break;
        end;
        s := copy(Name, 1, i - 1);
        add.treev.Items.Addchild(node, s);
        add.treev.items.Item[Count].ImageIndex := 13;
      end;
    until FindNext(info) <> 0;
  end;
  if FindFirst(Global_s + '\' + '*.card', faAnyFile, Info) = 0 then
  begin
    repeat
      Inc(Count);
      with Info do
      begin
        for i := length(Name) downto 1 do
        begin
          if Name[i] = '.' then
            break;
        end;
        s := copy(Name, 1, i - 1);
        add.treev.Items.Addchild(node, s);
        add.treev.items.Item[Count].ImageIndex := 15;
      end;
    until FindNext(info) <> 0;
  end;
  FindClose(Info);
  flagok := False;
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

procedure Tadd.button_saveClick(Sender: TObject);
var
  fs: tfilestream;
  s, s1: string;
begin
  if modified = 1 then
    s := edit_name.Text
  else if modified = 2 then
    s := edit_any.Text;
  if (s = '') then
  begin
    Error(2);
    exit();
  end;
  fs := TFileStream.Create(s + '.rtf', fmCreate);
  if modified = 1 then
    Memo.SaveRichText(fs)
  else if modified = 2 then
    memo_any.SaveRichText(fs);
  fs.Free;
  getfiles();
end;

procedure Tadd.ComboFontsChange(Sender: TObject);
begin

end;




procedure Tadd.add_personClick(Sender: TObject);
begin
  new_pers.Show;
end;

procedure Tadd.Button1Click(Sender: TObject);
begin
  getfiles();
end;

procedure Tadd.CombofontSelect(Sender: TObject);
var
  f: tfontparams;
begin
  if modified = 1 then
  begin
    memo.GetTextAttributes(memo.SelStart, f);
    f.Size := StrToInt(combofont.Text);
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.selstart, Memo.SelLength, f);
    Memo.SetFocus;
  end
  else if modified = 2 then
  begin
    memo_any.GetTextAttributes(memo_any.SelStart, f);
    f.Size := StrToInt(combofont.Text);
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    Memo_any.SetTextAttributes(Memo_any.SelStart, Memo_any.SelLength, f);
    memo_any.SetFocus;
  end;
end;



procedure Tadd.ComboFontsSelect(Sender: TObject);
begin
  SelFontFormat.Name := ComboFonts.Text;
  if modified = 1 then
  begin
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, SelFontFormat);
    Memo.SetFocus; // get focus to the rich Memo
  end
  else if modified = 2 then
  begin
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    memo_any.SetTextAttributes(memo_any.SelStart,
      memo_any.SelLength, SelFontFormat);
    memo_any.SetFocus; // get focus to the rich Memo
  end;
end;

procedure Tadd.Edit_searchChange(Sender: TObject);
begin

end;

procedure Tadd.Edit_searchEnter(Sender: TObject);

begin

end;

procedure Tadd.Edit_searchKeyPress(Sender: TObject; var Key: char);
var
  s: integer;
  l: integer;
  st: integer;
  opt: TSearchOptions;
begin
  if (key = #13) then
  begin
    opt := [];
    if modified = 1 then
    begin
      st := Memo.SelStart;
      l := Memo.SelLength;
      s := Memo.Search(Edit_search.Text, Memo.SelStart, Memo.GetTextLen, opt);
      if (s >= 0) then
      begin
        if (st = s) and (l = UTF8Length(Edit_search.Text)) then
          s := Memo.Search(Edit_search.Text, Memo.SelStart + 1, Memo.GetTextLen, opt);
      end;
      if (s >= 0) then
      begin
        Memo.SelStart := s;
        Memo.SetSelLengthFor(Edit_search.Text);
      end
      else
      begin
        Memo.SelStart := 0;
        Memo.SelLength := 0;
      end;
    end
    else if modified = 2 then
    begin
      st := memo_any.SelStart;
      l := memo_any.SelLength;
      s := memo_any.Search(Edit_search.Text, memo_any.SelStart,
        memo_any.GetTextLen, opt);
      if (s >= 0) then
      begin
        if (st = s) and (l = UTF8Length(Edit_search.Text)) then
          s := memo_any.Search(Edit_search.Text, memo_any.SelStart +
            1, memo_any.GetTextLen, opt);
      end;
      if (s >= 0) then
      begin
        memo_any.SelStart := s;
        memo_any.SetSelLengthFor(Edit_search.Text);
      end
      else
      begin
        memo_any.SelStart := 0;
        memo_any.SelLength := 0;
      end;
    end;

  end;
end;

procedure Tadd.FormShow(Sender: TObject);
var
  f: TFontParams;
begin

  flag := fic_main.flag;
  if (flag <> 4) then
  begin
    Memo.Height := 486;
  end;
  Memo.Visible := True;
  ComboFonts.items.Assign(Screen.fonts);
  if modified = 1 then
    memo.GetTextAttributes(0, f)
  else if modified = 2 then
    memo.GetTextAttributes(0, f);
  Combofont.Text := IntToStr(f.Size);
  Combofonts.Text := f.Name;
  if (flag = 2) then
  begin      //ЕСЛИ ОТКРЫТЬ ПРОЕКТ
    global_s := fic_main.global_s;
  end
  else if (flag = 1) then
  begin  //ЕСЛИ НОВЫЙ ПРОЕКТ
    global_s := new_papka.global_s;
  end
  else if (flag = 3) then
  begin  //ЕСЛИ НОВЫЙ ПРОЕКТ
    global_s := search.global_s;
  end
  else if (new_papka.flag = 3) then
  begin
    memo.Clear;
    memo.Clear;
    memo.repaint;
    memo_any.Clear;
    Edit_name.Clear;
    Edit_search.Clear;
    Edit_any.Clear;
  end;
  flag := 0;
  treev.items.Clear;
  chdir(global_s);
  getfiles();
  Filename := '';
  Filepath := '';
end;

procedure Tadd.Image_addClick(Sender: TObject);
begin
  new_pers.Show;
end;

procedure Tadd.Image_searchClick(Sender: TObject);
begin
  search_tag.Show;
end;

procedure Tadd.memoChange(Sender: TObject);
begin
end;

procedure Tadd.memoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  modified := 1;
end;

procedure Tadd.memoKeyPress(Sender: TObject; var Key: char);
begin
  modified := 1;
  if (key <> #8) and (key <> #13) then
    Memo.GetTextAttributes(Memo.SelStart, SelFontFormat);
end;

procedure Tadd.memoKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin

end;

procedure Tadd.MenuItem_anyClick(Sender: TObject);
begin
  if menuitem_any.Checked = True then
  begin
    Memo.Height := 486;
    modified := 1;
    memo_any.Visible := False;
    ToolBar_any.Visible := False;
    menuitem_any.Checked := False;
  end
  else
  begin
    menuitem_any.Checked := True;
    memo_any.Visible := True;
    Memo.Height := 204;
    ToolBar_any.color := $00CFE9E1;
    ToolBar_any.Visible := True;
  end;
end;

procedure Tadd.MenuItem_centerClick(Sender: TObject);
begin

  if modified = 1 then
  begin
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paCenter);
  end
  else if modified = 2 then
  begin
    memo_any.SetParaAlignment(memo_any.SelStart, memo_any.SelLength, paCenter);
  end;
end;

procedure Tadd.MenuItem_colorClick(Sender: TObject);
begin

  if modified = 1 then
  begin
    CD.Color := Memo.Color;
    if CD.Execute then
      Memo.Color := CD.Color;
  end
  else if modified = 2 then
  begin
    CD.Color := memo_any.Color;
    if CD.Execute then
      memo_any.Color := CD.Color;
  end;
end;

procedure Tadd.MenuItem_exitClick(Sender: TObject);
begin
  add.Close;
  proect.Width := 803;
end;

procedure Tadd.MenuItem_cutClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.CutToClipboard
  else if modified = 2 then
    memo_any.CutToClipboard;
end;

procedure Tadd.MenuItem_fontsClick(Sender: TObject);
begin
  if modified = 1 then
    FontD.Font := Memo.Font;
  if modified = 2 then
    FontD.Font := Memo_any.Font;
  if FontD.Execute then
  begin
    if Modified = 1 then
    begin

      memo.SetTextAttributes(memo.SelStart, memo.SelLength, fontd.font);

    end
    else if Modified = 2 then
      memo_any.SetTextAttributes(memo_any.SelStart, memo_any.SelLength, fontd.font);
  end;
  combofonts.Text := FontD.Font.Name;
  combofont.Text := IntToStr(FontD.Font.size);
end;

procedure Tadd.MenuItem_leftClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paLeft);
  end
  else if modified = 2 then
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paleft);
end;

procedure Tadd.MenuItem_otstypClick(Sender: TObject);
var
  m: TParaMetric;
begin
  if MenuItem_otstyp.Checked = False then
  begin
    MenuItem_otstyp.Checked := True;
    if modified = 1 then
      Memo.GetParaMetric(Memo.SelStart, m)
    else if modified = 2 then
      Memo_any.GetParaMetric(Memo_any.SelStart, m);
    m.FirstLine := 15;
    M.TailIndent := 10;
    m.HeadIndent := 10;
    if modified = 2 then
      memo_any.SetParaMetric(0, length(memo_any.Text), m);
    if modified = 1 then
      Memo.SetParaMetric(0, length(Memo.Text) + 1, m);
  end
  else
  begin
    MenuItem_otstyp.Checked := False;
    if modified = 1 then
      Memo.GetParaMetric(Memo.SelStart, m)
    else if modified = 2 then
      Memo_any.GetParaMetric(Memo_any.SelStart, m);
    m.FirstLine := 0;
    M.TailIndent := 1;
    m.HeadIndent := 1;
    if modified = 2 then
      memo_any.SetParaMetric(0, length(memo_any.Text), m);
    if modified = 1 then
      Memo.SetParaMetric(0, length(Memo.Text), m);
  end;
end;

procedure Tadd.MenuItem_redoClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.redo
  else if modified = 2 then
    memo_any.redo;
end;

procedure Tadd.MenuItem_rightClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paRight)
  else if modified = 2 then
    memo_any.SetParaAlignment(memo_any.SelStart, memo_any.SelLength, paRight);
end;

procedure Tadd.MenuItem_selectClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.SelectAll
  else if modified = 2 then
    memo_any.SelectAll;
end;

procedure Tadd.Menu_colorClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    CD.Color := Memo.Color;
    if CD.Execute then
      Memo.Color := CD.Color;
  end
  else if modified = 2 then
  begin
    CD.Color := memo_any.Color;
    if CD.Execute then
      memo_any.Color := CD.Color;
  end;
end;

procedure Tadd.menu_copyClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    Memo.CopyToClipboard;
  end
  else if modified = 2 then
  begin
    memo_any.CopyToClipboard;
  end;
end;

procedure Tadd.menu_createClick(Sender: TObject);
begin
  add.Visible := False;
  new_papka.flag := 2;

  add_papka.Show();
end;

procedure Tadd.menu_cutClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    Memo.CutToClipboard;
  end
  else if modified = 2 then
  begin
    memo_any.CutToClipboard;
  end;
end;

procedure Tadd.menu_instructionClick(Sender: TObject);
begin
  instr.Show();
end;

procedure Tadd.menu_saveClick(Sender: TObject);
var
  s: string;
  fs: tfilestream;
begin
  if modified = 1 then
    s := edit_name.Text
  else if modified = 2 then
    s := edit_any.Text;
  if (s = '') then
  begin
    Error(1);
    exit();
  end;
  fs := TFileStream.Create(s + '.rtf', fmCreate);
  if modified = 1 then
    Memo.saveRichText(fs)
  else if modified = 2 then
    memo_any.SaveRichText(fs);
  fs.Free;
  getfiles();

end;

procedure Tadd.Menu_selectClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.SelectAll
  else if modified = 2 then
    memo_any.SelectAll;
end;

procedure Tadd.Menu_undoClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    Memo.undo;
  end
  else if modified = 2 then
  begin
    memo_any.undo;
  end;
end;

procedure Tadd.Menu_wordClick(Sender: TObject);
begin
  if menu_word.Checked = True then
    menu_word.Checked := False
  else
    menu_word.Checked := True;
end;


procedure Tadd.openfileClick(Sender: TObject);
var
  s, st: string;
  i, j: integer;
  fs: tfilestream;
begin
  if OD1.Execute then
  begin
    fs := nil;
    fs := TFileStream.Create((OD1.FileName), fmOpenRead or fmShareDenyNone);
    if modified = 1 then
    begin
      Memo.LoadRichText(fs);
    end
    else if modified = 2 then
    begin
      memo_any.LoadRichText(fs);
    end;
    Saved := True;
    Filename := ExtractFileName(OD1.FileName);
    Filepath := ExtractFilePath(OD1.FileName);
    fs.Free;
  end;
  s := od1.FileName;
  j := 0;
  for i := length(s) downto 1 do
  begin
    if s[i] = '\' then
      break;
    Inc(j);
  end;
  st := copy(s, 0, length(s) - j - 1);
  chdir(st);
  global_s := st;
  if modified = 1 then
    edit_name.Text := copy(filename, 0, filename.Length - 4)
  else if modified = 2 then
    edit_any.Text := copy(filename, 0, filename.Length - 4);
  treev.Items.Clear;
  getfiles();
end;

procedure Tadd.Menu_fontClick(Sender: TObject);
var
  f: TFontParams;
begin
  if modified = 1 then
    FontD.Font := Memo.Font;
  if modified = 2 then
    FontD.Font := Memo_any.Font;
  if FontD.Execute then
  begin
    if Modified = 1 then
    begin

      memo.SetTextAttributes(memo.SelStart, memo.SelLength, fontd.font);

    end
    else if Modified = 2 then
      memo_any.SetTextAttributes(memo_any.SelStart, memo_any.Sellength, fontd.font);
  end;
  combofonts.Text := FontD.Font.Name;
  combofont.Text := IntToStr(FontD.Font.size);
end;

procedure Tadd.savefileClick(Sender: TObject);
var
  fs: tfilestream;
begin
  if modified = 1 then
    s := edit_name.Text
  else if modified = 2 then
    s := edit_any.Text;
  if (s = '') then
  begin
    Error(2);
    exit();
  end;
  fs := TFileStream.Create(s + '.rtf', fmCreate);
  if modified = 1 then
    Memo.SaveRichText(fs)
  else if modified = 2 then
    memo_any.saverichtext(fs);
  fs.Free;
  TreeV.Items.Clear;
  getfiles();
end;

procedure Tadd.ToolButton_boldClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    if (fsBold in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsBold]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsBold];
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, SelFontFormat);
  end
  else if modified = 2 then
  begin
    if (fsBold in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsBold]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsBold];
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    memo_any.SetTextAttributes(memo_any.SelStart, memo_any.SelLength, SelFontFormat);
  end;
end;

procedure Tadd.ToolButton_cClick(Sender: TObject);
var
  s: TParaAlignment;
begin
  if modified = 1 then
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paCenter)
  else if modified = 2 then
    memo_any.SetParaAlignment(memo_any.SelStart, memo_any.SelLength, pacenter);
end;

procedure Tadd.ToolButton_colorselClick(Sender: TObject);
var
  fp: tfontparams;
begin
  if CD.Execute then
  begin
    if modified = 1 then
    begin
      memo.color := cd.color;
    end
    else if modified = 2 then
    begin
      memo_any.color := cd.Color;
    end;
  end;
end;

procedure Tadd.ToolButton_colortextClick(Sender: TObject);
var
  fp: tfontparams;
begin
  if CD.Execute then
  begin
    if modified = 1 then
    begin
      Memo.GetTextAttributes(memo.SelStart, fp);
      fp.Color := cd.Color;
      if memo.sellength = 0 then
        memo.sellength := 1;
      Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, fp);
    end
    else if modified = 2 then
    begin
      Memo_any.GetTextAttributes(memo_any.SelStart, fp);
      fp.Color := cd.Color;
      if memo_any.sellength = 0 then
        memo_any.sellength := 1;
      Memo_any.SetTextAttributes(Memo_any.SelStart, Memo_any.SelLength, fp);
    end;
  end;
end;

procedure Tadd.ToolButton_italicClick(Sender: TObject);
begin
  if modified = 1 then
  begin
    if (fsItalic in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsItalic]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsItalic];
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, SelFontFormat);
  end
  else if modified = 2 then
  begin
    if (fsItalic in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsitalic]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsitalic];
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    memo_any.SetTextAttributes(memo_any.SelStart, memo_any.SelLength, SelFontFormat);
  end;
end;

procedure Tadd.ToolButton_lClick(Sender: TObject);
var
  s: TParaAlignment;
begin
  if modified = 1 then
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paleft)
  else if modified = 2 then
    memo_any.SetParaAlignment(memo_any.SelStart, memo_any.SelLength, paLeft);
end;

procedure Tadd.ToolButton_rClick(Sender: TObject);
var
  s: TParaAlignment;
begin
  if modified = 1 then
    Memo.SetParaAlignment(Memo.SelStart, Memo.SelLength, paRight)
  else if modified = 2 then
    memo_any.SetParaAlignment(memo_any.SelStart, memo_any.SelLength, paRight);
end;

procedure Tadd.ToolButton_sClick(Sender: TObject);
begin

  if modified = 1 then
  begin
    if (fsStrikeOut in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsStrikeOut]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsStrikeOut];
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, SelFontFormat);
  end
  else if modified = 2 then
  begin
    if (fsStrikeOut in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsStrikeOut]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsStrikeOut];
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    memo_any.SetTextAttributes(memo_any.SelStart, memo_any.SelLength, SelFontFormat);
  end;
end;

procedure Tadd.ToolButton_searchClick(Sender: TObject);
var
  s: integer;
  l: integer;
  st: integer;
  opt: TSearchOptions;
begin
  opt := [];
  if modified = 1 then
  begin
    st := Memo.SelStart;
    l := Memo.SelLength;
    s := Memo.Search(Edit_search.Text, Memo.SelStart, Memo.GetTextLen, opt);
    if (s >= 0) then
    begin
      if (st = s) and (l = UTF8Length(Edit_search.Text)) then
        s := Memo.Search(Edit_search.Text, Memo.SelStart + 1, Memo.GetTextLen, opt);
    end;
    if (s >= 0) then
    begin
      Memo.SelStart := s;
      Memo.SetSelLengthFor(Edit_search.Text);
    end
    else
    begin
      Memo.SelStart := 0;
      Memo.SelLength := 0;
    end;
  end
  else if modified = 2 then
  begin
    st := memo_any.SelStart;
    l := memo_any.SelLength;
    s := memo_any.Search(Edit_search.Text, memo_any.SelStart, memo_any.GetTextLen, opt);
    if (s >= 0) then
    begin
      if (st = s) and (l = UTF8Length(Edit_search.Text)) then
        s := memo_any.Search(Edit_search.Text, memo_any.SelStart +
          1, memo_any.GetTextLen, opt);
    end;
    if (s >= 0) then
    begin
      memo_any.SelStart := s;
      memo_any.SetSelLengthFor(Edit_search.Text);
    end
    else
    begin
      memo_any.SelStart := 0;
      memo_any.SelLength := 0;
    end;
  end;

end;


procedure Tadd.ToolButton_uClick(Sender: TObject);
begin

  if modified = 1 then
  begin
    if (fsUnderline in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsUnderline]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsUnderline];
    if memo.sellength = 0 then
      memo.sellength := 1;
    Memo.SetTextAttributes(Memo.SelStart, Memo.SelLength, SelFontFormat);
  end
  else if modified = 2 then
  begin
    if (fsUnderline in SelFontFormat.Style = False) then
      SelFontFormat.Style := SelFontFormat.Style + [fsUnderline]
    else
      SelFontFormat.Style := SelFontFormat.Style - [fsUnderline];
    if memo_any.sellength = 0 then
      memo_any.sellength := 1;
    memo_any.SetTextAttributes(memo_any.SelStart, memo_any.SelLength, SelFontFormat);
  end;
end;

procedure Tadd.TreeVClick(Sender: TObject);
begin
end;


procedure Tadd.TreeVGetSelectedIndex(Sender: TObject; Node: TTreeNode);
var
  m: TParaMetric;
  fs: tfilestream;
  i: integer;
begin
  if treev.selected = nil then
    exit;
  for i := 1 to treev.items.Count - 1 do
  begin
    if (treev.Items.Item[i].Selected = True) and
      (treev.Items.Item[i].ImageIndex = 15) then
    begin
      nameofpers := global_s + '\' + treev.Selected.Text + '.card';
      pers_edit.Show;
      treev.Items.Item[i].Selected := False;
      treev.Items.Clear;
      getfiles();
      exit;
    end;
  end;
  if treev.Items.Item[0].Selected = True then
    exit;
  s := global_s + '\' + treev.Selected.Text;
  fs := nil;
  fs := TFileStream.Create((s + '.rtf'), fmShareDenyNone or fmOpenRead);
  if modified = 1 then
  begin
    Memo.Clear;
    Edit_name.Caption := treev.Selected.Text;
    memo.LoadRichText(fs);
    memo.GetParaMetric(0, m);
    if m.FirstLine > 0 then
      MenuItem_otstyp.Checked := True
    else
      MenuItem_otstyp.Checked := False;
    Saved := True; // since we opened a saved file
  end
  else if modified = 2 then
  begin
    memo_any.Clear;
    Edit_any.Caption := treev.Selected.Text;
    memo_any.LoadRichText(fs);
    memo_any.GetParaMetric(0, m);
    if m.FirstLine > 0 then
      MenuItem_otstyp.Checked := True
    else
      MenuItem_otstyp.Checked := False;
    saved := True;
  end;
  fs.Free;
end;

procedure Tadd.MemoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  modified := 1;
  if length(memo_any.seltext) > 0 then
    memo_any.SelStart := length(memo_any.Text) - 1;
end;

procedure Tadd.memo_anyKeyPress(Sender: TObject; var Key: char);
begin
  if (key <> #8) and (key <> #13) then
    memo_any.GetTextAttributes(memo_any.SelStart, SelFontFormat);
end;


procedure Tadd.memo_anyKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  modified := 2;

end;

procedure Tadd.Memo_anyMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  modified := 2;
  if length(memo.seltext) > 0 then
    memo.SelStart := length(memo.Text) - 1;
end;

procedure Tadd.MenuItem_cptoutfClick(Sender: TObject);
begin
  if modified = 1 then
    memo.Text := CP1251ToUTF8(memo.Text)
  else if modified = 2 then
    memo_any.Text := CP1251ToUTF8(memo_any.Text);
  if length(memo_any.seltext) > 0 then
    memo_any.SelStart := length(memo_any.Text) - 1;
  if length(memo.seltext) > 0 then
    memo.SelStart := length(memo.Text) - 1;
end;

procedure Tadd.MenuItem_ansitoutfClick(Sender: TObject);
begin
  if modified = 1 then
    memo.Text := AnsiToUtf8(memo.Text)
  else if modified = 2 then
    memo_any.Text := AnsiToUtf8(memo_any.Text);
  if length(memo_any.seltext) > 0 then
    memo_any.SelStart := length(memo_any.Text) - 1;
  if length(memo.seltext) > 0 then
    memo.SelStart := length(memo.Text) - 1;
end;

procedure Tadd.MenuItem1_deleteClick(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to treev.items.Count - 1 do
  begin
    if treev.Items.Item[i].Selected = True then
    begin
      flagok := True;
      DeleteFile(global_s + '\' + treev.Selected.Text + '.rtf');
      treev.Items.Item[i].Delete;
      if modified = 1 then
      begin
        Memo.Clear;
        edit_name.Clear;
      end
      else if modified = 2 then
      begin
        memo_any.Clear;
        edit_any.Clear;
      end;
      break;
    end;
  end;
  treev.Items.Clear;
  getfiles;

end;

procedure Tadd.MenuItem_buttonsClick(Sender: TObject);
begin
  if MenuItem_buttons.Caption = 'Показать кнопки' then
  begin
    image_add.Visible := True;
    Image_search.Visible := True;
    MenuItem_buttons.Caption := 'Скрыть кнопки';
  end
  else
  begin
    image_add.Visible := False;
    Image_search.Visible := False;
    MenuItem_buttons.Caption := 'Показать кнопки';
  end;
end;

procedure Tadd.MenuItem_openClick(Sender: TObject);
var
  fs: tfilestream;
begin
  if OD1.Execute then
  begin
    fs := nil;
    fs := TFileStream.Create((OD1.FileName), fmOpenRead or fmShareDenyNone);
    if modified = 1 then
    begin
      Memo.LoadRichText(fs);
    end
    else if modified = 2 then
    begin
      memo_any.LoadRichText(fs);
    end;
    Saved := True;
    Filename := ExtractFileName(OD1.FileName);
    Filepath := ExtractFilePath(OD1.FileName);
    fs.Free;
  end;
  s := od1.FileName;
  j := 0;
  for i := length(s) downto 1 do
  begin
    if s[i] = '\' then
      break;
    Inc(j);
  end;
  st := copy(s, 0, length(s) - j - 1);
  if modified = 1 then
    edit_name.Text := copy(filename, 0, filename.Length - 4)
  else if modified = 2 then
    edit_any.Text := copy(filename, 0, filename.Length - 4);

end;

procedure Tadd.MenuItem_toolbarClick(Sender: TObject);
begin
  if MenuItem_toolbar.Caption = 'Показать панель' then
  begin
    ToolBar.Visible := True;
    MenuItem_toolbar.Caption := 'Скрыть панель';
  end
  else
  begin
    toolbar.Visible := False;
    MenuItem_toolbar.Caption := 'Показать панель';
  end;
end;

procedure Tadd.MenuItem_treeClick(Sender: TObject);
begin
  if MenuItem_tree.Caption = 'Показать дерево проекта' then
  begin
    treev.Visible := True;
    MenuItem_tree.Caption := 'Скрыть дерево проекта';
  end
  else
  begin

    treev.Visible := False;
    MenuItem_tree.Caption := 'Показать дерево проекта';
  end;
end;

procedure Tadd.MenuItem_utftoansiClick(Sender: TObject);
begin
  if modified = 1 then
    memo.Text := Utf8ToAnsi(memo.Text)
  else if modified = 2 then
    memo_any.Text := Utf8ToAnsi(memo_any.Text);
  if length(memo_any.seltext) > 0 then
    memo_any.SelStart := length(memo_any.Text) - 1;
  if length(memo.seltext) > 0 then
    memo.SelStart := length(memo.Text) - 1;
end;

procedure Tadd.MenuItem_utftocpClick(Sender: TObject);
begin
  if modified = 1 then
    memo.Text := UTF8ToCP1251(memo.Text)
  else if modified = 2 then
    memo_any.Text := UTF8ToCP1251(memo_any.Text);
  if length(memo_any.seltext) > 0 then
    memo_any.SelStart := length(memo_any.Text) - 1;
  if length(memo.seltext) > 0 then
    memo.SelStart := length(memo.Text) - 1;
end;

procedure Tadd.vstavkaClick(Sender: TObject);
begin
  if modified = 1 then
    Memo.PasteFromClipboard
  else if modified = 2 then
    memo_any.PasteFromClipboard;
end;

end.
