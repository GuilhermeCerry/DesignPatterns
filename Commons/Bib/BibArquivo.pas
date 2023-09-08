unit BibArquivo;

interface

uses
  Windows, Controls, Forms, SysUtils, FileCtrl;

type

  DirectoryType = (_dtWINDOWS, _dtSYSTEM, _dtCURRENT, _dtTEMP, _dtMYDOCUMENTS,
    _dtFAVORITES, _dtDESKTOP, _dtPROGRAMS, _dtRECENT, _dtSTARTUP);


  function SelPath(const cCaption: string; var cPath:  String; lSelFile: boolean; const aTipos: array of string): boolean;

implementation

uses
  ShlObj,
  Dialogs,
  ShellApi;


function SelPath(const cCaption: string; var cPath:  String; lSelFile: boolean; const aTipos: array of string): boolean;
var
  i: integer;
  OD: TOpenDialog;
  cRoot: WideString;
begin
  if (lSelFile) then
  begin
    OD := TOpenDialog.Create(nil);
    try
      OD.Title := cCaption;
      OD.Options := [ofFileMustExist,ofEnableSizing];
      for i := 0 to High(aTipos) do
        OD.Filter := OD.Filter + aTipos[i] +'|';
      if (OD.Filter = '') then
        OD.Filter := 'Qualquer arquivo (*.*)|*.*';
      if (cPath <> '') then
        OD.InitialDir := cPath;
      Result := OD.Execute;
      if (Result) then
        cPath := OD.FileName
      else
        cPath := '';
    finally
      FreeAndNil(OD);
    end;
  end
  else
  begin
	  cRoot := cPath;
	  Result := FileCtrl.SelectDirectory(cCaption, cRoot, cPath);
  end;
end;

end.
