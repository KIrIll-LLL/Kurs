program Attack_on_Titan;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin

 Application.Initialize;
  Form1 := TForm1.Create(Application);
  Form1.Show;
  Form1.Update;
  while Form1.Timer1.Enabled do
    Application.ProcessMessages;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Form1.Hide;
  Form1.Free;
  Application.Run;
end.
