unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls, Vcl.Menus, ShellAPI;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Image3: TImage;
    Image7: TImage;
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit5;


procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.Hide;
Form3.Show;
end;
//при активации формы включается аудио
procedure TForm2.FormActivate(Sender: TObject);
begin
MediaPlayer1.FileName:=('fon.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
//переход на "тест"
procedure TForm2.Image5Click(Sender: TObject);
begin
 Image1.Picture.LoadFromFile('picture\test.png');
Image2.Visible:=False;
Image4.Visible:=False;
Image6.Visible:=False;
Image5.Visible:=False;
Button1.Visible:=True;
Image7.Visible:=false;
Image3.Visible:=false;
MediaPlayer1.Pause;
MediaPlayer1.Close;
end;


//переход на "персонажи"
procedure TForm2.Image6Click(Sender: TObject);
begin
 Form2.Hide;
Form5.Show;
MediaPlayer1.Pause;
MediaPlayer1.Close;
end;


procedure TForm2.Image7Click(Sender: TObject);
begin
Image7.Visible:=false;
Image3.Visible:=true;
  MediaPlayer1.Play;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
 ShellExecute(0,Pchar('Open'),Pchar('spravka.chm'),nil,nil,SW_SHOW);
end;

procedure TForm2.N3Click(Sender: TObject);
begin
Close
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
showmessage('Дудинский Кирилл Владимирович'+#13+'Учащийся группы ПЗТ-38'+#13+'Создатель квест-игры Attack on Titan')
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
Image7.Visible:=true;
Image3.Visible:=false;
  MediaPlayer1.Stop;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
 Form2.Hide;
Form4.Show;
MediaPlayer1.Pause;
MediaPlayer1.Close;

end;

end.
