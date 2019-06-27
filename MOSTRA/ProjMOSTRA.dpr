program ProjMOSTRA;

uses
  Vcl.Forms,
  Unit2 in '..\..\Downloads\Mostra [Principal]\Unit2.pas' {Form2},
  UnitMOSTRA in 'UnitMOSTRA.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
