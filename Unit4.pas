unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.MPlayer, Vcl.Menus;

type
  TForm4 = class(TForm)
    Image2: TImage;
    Button1: TButton;
    Label1: TLabel;
    MediaPlayer1: TMediaPlayer;
    PopupMenu1: TPopupMenu;
    menu1: TMenuItem;
    exit1: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Button6: TButton;
    Label2: TLabel;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure menu1Click(Sender: TObject);
    procedure exit1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image11MouseEnter(Sender: TObject);
    procedure Image12MouseEnter(Sender: TObject);
    procedure Image14MouseEnter(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image8MouseEnter(Sender: TObject);
    procedure Image9MouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  n,i,j,v,z,c:integer;
  qq:string;
implementation

{$R *.dfm}

uses Unit2;
//изображений по клику кнопки далее
procedure TForm4.Button1Click(Sender: TObject);

begin

Label1.Visible:=False;
 inc(n);
Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');

 if n=47 then  begin
 Form2.Hide;
 Form4.Close;

 end;
if n=25 then begin
Button1.Visible:=false;
Button2.Visible:=true;
Button3.Visible:=true;
end;
//подгрузка аудио на определенное изображение
if n=10 then begin
  MediaPlayer1.FileName:=('10.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
if n=11 then begin
  MediaPlayer1.FileName:=('11.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
if n=12 then  MediaPlayer1.Stop;

if n=28 then begin
    MediaPlayer1.FileName:=('29.mp3');
MediaPlayer1.Open;
MediaPlayer1.Play;
end;
if n=29 then  MediaPlayer1.Stop;
//появлене кнопок выбора действия
if n=33 then begin
   Button4.Visible:=true;
   Button5.Visible:=true;
   Button1.Visible:=false;
   j:=0;
end;
 //появление игры "загадки"
if n=36 then begin
Button1.enabled:=false;

Edit1.Visible:=true;
Edit2.Visible:=true;
Edit3.Visible:=true;
Edit4.Visible:=true;
Edit5.Visible:=true;
  Button6.Visible:=true;
  label2.Visible:=true; end;
 if n=37  then begin
    Button1.enabled:=true;
 end;
 if n=38 then Button1.enabled:=false;
end;

//появление мини-игры "Лабиринт"
procedure TForm4.Button2Click(Sender: TObject);
begin
inc(j);
Button3.enabled:=true;
 Button3.Visible:=false;

 if j=1 then begin

 Button2.Visible:=false;
Image2.Visible:=false;
Image1.Visible:=true;
Image3.Visible:=true;
Image4.Visible:=true;
Image5.Visible:=true;
Image6.Visible:=true;
Image7.Visible:=true;
Image8.Visible:=true;
Image9.Visible:=true;
Image10.Visible:=true;
Image11.Visible:=true;
Image12.Visible:=true;
Image13.Visible:=true;
Image14.Visible:=true;

SetCursorPos(450, 800);
 end;

end;
//появление изображения пир клике кнокпи
procedure TForm4.Button3Click(Sender: TObject);
begin
 inc(i);
Button2.Visible:=false;

  if i=1 then begin
  Image2.Picture.LoadFromFile('picture\'+IntToStr(i)+'(2).png');
  end;
  if i=2 then begin
  Button2.Visible:=true;
  Button3.Enabled:=false;
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
  end;

end;
//появление изображения пир клике кнокпи
procedure TForm4.Button4Click(Sender: TObject);
begin
inc(j);
if j=1 then begin
  Button5.Visible:=false;
  Image2.Picture.LoadFromFile('picture\'+IntToStr(j+1)+'(3).png');
end;
if j=2 then begin
   Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
   Button5.Visible:=true;
   Button4.Enabled:=false;
end;

end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Button4.Visible:=false;
Button5.Visible:=false;
Button1.Visible:=true;
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;


 //проверка ответов загадок и переход на след. изображение
procedure TForm4.Button6Click(Sender: TObject);
 var c1:integer;
 q1,q2,q3,q4,q5:string;
begin
c1:=5;
c:=0;
q1:=LowerCase(edit1.Text);q2:=LowerCase(edit2.Text);q3:=LowerCase(edit3.Text);
q4:=LowerCase(edit4.Text);q5:=LowerCase(edit5.Text);
  if q1='язык' then inc(c) else Edit1.clear;
  if q2='улыбка' then  inc(c)  else Edit2.clear;
  if q3='пальцы' then inc(c)  else Edit3.clear;
  if q4='язык' then inc(c) else Edit4.clear;
  if q5='волосы' then inc(c) else Edit5.clear;
  if c1=c then begin
  Edit1.Visible:=false;
Edit2.Visible:=false;
Edit3.Visible:=false;
Edit4.Visible:=false;
Edit5.Visible:=false;
  Button6.Visible:=false;
  Button1.enabled:=true;
  end;

end;


//выход на главную форму с обнулением прогресса
procedure TForm4.exit1Click(Sender: TObject);
begin
Form4.Close;
form2.Show;
n:=1;
i:=0;
Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
MediaPlayer1.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
z:=0;
end;
//игра лабиринт закончена, загрузка другого изображеня
//удаление лабиринта
procedure TForm4.Image13MouseEnter(Sender: TObject);
begin
 Image2.Visible:=true;
Image1.Visible:=false;
Image3.Visible:=false;
Image4.Visible:=false;
Image5.Visible:=false;
Image6.Visible:=false;
Image7.Visible:=false;
Image8.Visible:=false;
Image9.Visible:=false;
Image10.Visible:=false;
Image11.Visible:=false;
Image12.Visible:=false;
Image13.Visible:=false;
Image13.Enabled:=false;
Image14.Visible:=false;

inc(n);
Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
Button1.Visible:=true;
end;


//игра "Найди". Считаются клики и переходит на след.изображение
procedure TForm4.Image16Click(Sender: TObject);
begin
inc(n);
   Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
    Image16.Visible:= false;
    Image17.Visible:= true;
end;

procedure TForm4.Image17Click(Sender: TObject);
begin
inc(n);
    Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
    Image17.Visible:= false;
    Image18.Visible:= true;

end;

procedure TForm4.Image18Click(Sender: TObject);
begin
Button1.Visible:=true;
Button1.enabled:=true;
   inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;


//игра "найди отличие". Подсчет найдденых отличи и переход на сл. из.
procedure TForm4.Image20Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;

end;

procedure TForm4.Image22Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;
end;

procedure TForm4.Image23Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;
end;

procedure TForm4.Image24Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;
end;

procedure TForm4.Image25Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;
end;

procedure TForm4.Image26Click(Sender: TObject);
begin
inc(v);
if v=6 then begin
  inc(n);
  Image2.Picture.LoadFromFile('picture\'+IntToStr(n)+'.png');
end;
end;


// игра "Лабиринт". При наведении курсора на стену(изображение)
// курсор перебрасывает в начало
procedure TForm4.Image10MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image11MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image12MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image14MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;



procedure TForm4.Image1MouseEnter(Sender: TObject);
begin
 SetCursorPos(450, 800);
end;

procedure TForm4.Image3MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image4MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image5MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image6MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image7MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image8MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;

procedure TForm4.Image9MouseEnter(Sender: TObject);
begin
SetCursorPos(450, 800);
end;
//переход на главную форму с сохранением прогресса
procedure TForm4.menu1Click(Sender: TObject);
begin
Form4.Hide;
form2.Show;
MediaPlayer1.Close;
end;

end.
