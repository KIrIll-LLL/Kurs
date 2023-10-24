unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    WebBrowser1: TWebBrowser;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    menu1: TMenuItem;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure menu1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  f:text;
  s: string;
  Nvern, ball:integer;

implementation

{$R *.dfm}

uses Unit2;



procedure TForm3.Button1Click(Sender: TObject);
begin
//Если выбран вариант ответа и не достигнут конец файла
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1; //Если выбранный вариант соответствует
RadioGroup2.Items.Clear; //номеру верного ответа то балл прибавляется
Repeat //и очищается поле для следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);

end

else RadioGroup2.Items.Add(s);
readln(f,s);

until (s[1]='-') or (Eof(f));
end
//Если конец файла достигнут, значит вопросы закончились
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);

if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
if ball=9 then
showmessage('Количество правильных ответов: '+IntToStr(ball)+' из 9'+#13+'Молодец! Ты лучший!'); //Вывод количества баллов
if (ball<9) and (ball>=6) then
showmessage('Количество правильных ответов: '+IntToStr(ball)+' из 9'+#13+'А ты неплох (????)?');
if (ball<6) and (ball>3) then
showmessage('Количество правильных ответов: '+IntToStr(ball)+' из 9'+#13+'Ты хороший середнячек ? ? ?_? ??');
if ball<3 then
showmessage('Количество правильных ответов: '+IntToStr(ball)+' из 9'+#13+'Получится в следующий раз ?\_(?)_/?');
Button4.Visible:=true;
CloseFile(f);
 RadioGroup2.Visible:=false;
 Button1.Visible:=False;
Button1.Enabled:=False; //кнопка становится недоступной в завершении проекта

end;
end;
//удаление веб-страницы и переход к тесту
procedure TForm3.Button2Click(Sender: TObject);
begin
WebBrowser1.Destroy;
Button2.Visible:=False;
Button3.Visible:=true;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Button3.Visible:=False;
  Button1.Visible:=True;
  RadioGroup2.Visible:=true;
   AssignFile( f ,'variant1.txt');//связывается с разными файлами

reset(f); //Открываем файл для чтения
readln(f,s); //Считываем первую строку из файла
ball:=0; //изначально количество баллов 0
repeat
if (s[1]='-') then begin //Если первый символ строки ‘-‘ значит это вопрос
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin //Если перв символ ‘*’ значит это номер верного ответа
delete(s,1,1);
Nvern:=StrToInt(s);
end

else RadioGroup2.Items.Add(s); //Иначе это вариант ответа
readln(f,s); //Считываем следующую строку из файла
until (s[1]='-') or (Eof(f)); //Считывание и отправление вариантов ответов в RadiGroup до тех пор

// пока не достигнут следующий вопрос или конец файла
end;

//переход на главную форму после прохождения теста
procedure TForm3.Button4Click(Sender: TObject);
begin
form2.Image1.Picture.LoadFromFile('picture\zastavka.jpeg');
form2.Image2.Visible:=True;
form2.Image4.Visible:=true;
form2.Image6.Visible:=true;
form2.Image5.Visible:=true;
form2.Button1.Visible:=false;
Form3.Close;
form2.show;
end;
 //подгрузка веб-страницы
procedure TForm3.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'test.mht')
end;
//переход на главную форму
procedure TForm3.menu1Click(Sender: TObject);
begin
form2.Image1.Picture.LoadFromFile('picture\zastavka.jpeg');
form2.Image2.Visible:=True;
form2.Image4.Visible:=true;
form2.Image6.Visible:=true;
form2.Image5.Visible:=true;
form2.Button1.Visible:=false;
Form3.Close;
Form2.Show;
end;

end.
