unit point;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Body: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NightBlue,LightBlue,BtnBlue: TColor;



implementation

{$R *.dfm}

 
procedure TForm1.FormCreate(Sender: TObject);
begin
      NightBlue := TColor(RGB(33, 47, 61 ));
      LightBlue := TColor(RGB(52, 73, 94  ));
      BtnBlue := TColor(RGB(52, 60, 85  ));
      Form1.Body.Color := LightBlue;
      Form1.Color := NightBlue;
      Form1.Panel1.Color:= NightBlue;



end;

procedure TForm1.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
if Form1.WindowState = wsNormal then
   begin
        Form1.WindowState:=wsMaximized;
        with Screen.WorkAreaRect do
            Form1.SetBounds(Left, Top, Right - Left, Bottom - Top);
   end
       else
       begin
         Form1.WindowState:=wsNormal;
       end;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
    if Form1.WindowState = wsNormal then
       begin
          Form1.WindowState:=wsMinimized;
      end else
       begin
         Form1.WindowState:=wsMinimized;
       end;
end;

procedure TForm1.WMNCHitTest(var Msg: TWMNCHitTest);
begin
inherited;
  if Msg.Result = htClient then Msg.Result := htCaption;
end;

end.
