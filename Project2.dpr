program Project2;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  Data in 'Data.pas' {dbData: TDataModule},
  point in 'point.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TdbData, dbData);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
