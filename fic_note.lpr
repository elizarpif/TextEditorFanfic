program fic_note;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, fic_main, edit_note, add_pers, new_papka, search, edit_personash,
  instruction;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(Tproect, proect);
  Application.CreateForm(Tadd, add);
  Application.CreateForm(Tnew_pers, new_pers);
  Application.CreateForm(Tadd_papka, add_papka);
  Application.CreateForm(Tsearch_tag, search_tag);
  Application.CreateForm(Tpers_edit, pers_edit);
  Application.CreateForm(Tinstr, instr);
  Application.Run;
end.

