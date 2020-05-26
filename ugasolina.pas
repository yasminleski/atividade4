unit ugasolina;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    a: TButton;
    g: TButton;
    Label1: TLabel;
    Label2: TLabel;
    litros: TEdit;
    resultado: TEdit;
    procedure aClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure resultadoChange(Sender: TObject);
    procedure gClick(Sender: TObject);
    procedure litrosChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.gClick(Sender: TObject);
var v1, n, v2 : double;
begin
  n :=  StrToFloat(litros.Text);
  v1 := n -(n*3.30*0.03);
  v2 := n -(n*3.30*0.05);

  if StrToFloat(litros.Text) < 20 then
    resultado.Text := v1.ToString
  else
  resultado.Text := v2.ToString;


end;

procedure TForm1.resultadoChange(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.aClick(Sender: TObject);
  var v1, n, v2 : double;
begin
  n :=  StrToFloat(litros.Text);
  v1 := n -(n*2.90*0.04);

  v2 := n -(n*2.90*0.06);

  if StrToFloat(litros.Text) < 20 then
    resultado.Text := v1.ToString
  else
  resultado.Text := v2.ToString;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.litrosChange(Sender: TObject);
begin

end;

end.

