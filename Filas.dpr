program Filas;

uses
  Vcl.Forms,
  uffilas in 'uffilas.pas' {ffilas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tffilas, ffilas);
  Application.Run;
end.
