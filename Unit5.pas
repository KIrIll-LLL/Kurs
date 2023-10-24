unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Imaging.pngimage, Vcl.MPlayer;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    menu1: TMenuItem;
    Label4: TLabel;
    Image4: TImage;
    MediaPlayer1: TMediaPlayer;

    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure menu1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2;

//при нажатии клавиши включается аудио
procedure TForm5.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#49 then
begin
MediaPlayer1.FileName:=('eren_audio.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
 if Key=#50 then
begin
MediaPlayer1.FileName:=('mikasa_audio.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
if Key=#51 then
begin
MediaPlayer1.FileName:=('armin_audio.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
if Key=#52 then

MediaPlayer1.Stop;

end;
 //при наведении курсора на форму все картинки приходят
 //в исохдно состояние
procedure TForm5.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Image1.Picture.LoadFromFile('picture\eren.png');
Image1.Width:=225;
Image1.Height:=209;
 Image2.Picture.LoadFromFile('picture\mikasa.png');
Image2.Width:=225;
Image2.Height:=209;
Image2.Left:=416;
 Image3.Picture.LoadFromFile('picture\armin.png');
Image3.Width:=225;
Image3.Height:=209;
Image3.Left:=849;
Image1.Visible:=true;
Image1.enabled:=true;
Image2.Visible:=true;
 Image2.enabled:=true;
Image3.Visible:=true;
 Image3.enabled:=true;
    Label1.Visible:=true;
     Label2.Visible:=true;
     Label2.Left:=416;
      Label3.Visible:=true;
      Label3.Left:=849;
       Image4.visible:=false;
end;

//при наведении на изображение оно перемещается и изменяется
//подгружаются новые изображения
procedure TForm5.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image1.Picture.LoadFromFile('picture\eren2.png');
Image1.Width:=500;
Image1.Height:=500;
Image2.Visible:=false;
Image2.enabled:=false;
 Image3.enabled:=false;
 Image3.visible:=false;
  Label2.Visible:=false;
  Label3.Visible:=false;
   Label1.Visible:=true;

   Image4.visible:=true;
   Image4.Picture.LoadFromFile('picture\eren3.png');

end;

procedure TForm5.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Image2.Picture.LoadFromFile('picture\mikasa2.png');
Image2.Width:=500;
Image2.Height:=500;
Image2.Left:=32;
Image3.Visible:=false;
  Label1.Visible:=false;
  Label3.Visible:=false;
   Label2.Visible:=true;
    Label2.Left:=32;
   Image1.Visible:=false;
Image1.enabled:=false;
 Image3.enabled:=false;
 Image3.visible:=false;

    Image4.visible:=true;
   Image4.Picture.LoadFromFile('picture\mikasa3.png');

end;

procedure TForm5.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Image3.Picture.LoadFromFile('picture\armin2.png');
Image3.Width:=500;
Image3.Height:=500;
Image3.Left:=32;
  Label1.Visible:=false;
  Label2.Visible:=false;
    Label3.Visible:=true;
     Label3.Left:=32;
       Image2.Visible:=false;
Image2.enabled:=false;
 Image1.enabled:=false;
 Image1.visible:=false;

    Image4.visible:=true;
   Image4.Picture.LoadFromFile('picture\armin3.png');

end;
//переход на главную форму
procedure TForm5.menu1Click(Sender: TObject);
begin
Form5.Close;
Form2.show;
end;

end.
