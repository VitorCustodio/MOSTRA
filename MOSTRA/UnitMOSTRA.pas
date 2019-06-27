unit UnitMOSTRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Form2.Show;

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

  Form1.Hide;
  Form2.Show;

end;

procedure TForm1.ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin

  With ScrollBox1.VertScrollBar Do
  Begin
    If (ScrollBox1.VertScrollBar.Position <= (ScrollBox1.VertScrollBar.Range -
      ScrollBox1.VertScrollBar.Increment)) Then
    begin
      ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position +
        ScrollBox1.VertScrollBar.Increment
    end
    Else
    begin
      ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Range -
        ScrollBox1.VertScrollBar.Increment;
    end;
  End;

end;

procedure TForm1.ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  With ScrollBox1.VertScrollBar Do
  Begin
    If (ScrollBox1.VertScrollBar.Position >=
      ScrollBox1.VertScrollBar.Increment) Then
    begin
      ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position -
        ScrollBox1.VertScrollBar.Increment
    end
    Else
    begin
      ScrollBox1.VertScrollBar.Position := 0;
    end;
  End;

end;

end.
