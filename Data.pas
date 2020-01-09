unit Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdbData = class(TDataModule)
    StageensConnection: TFDConnection;
    PointTable: TFDQuery;
    ApsentTable: TFDQuery;
    ClassTable: TFDQuery;
    DivisionTable: TFDQuery;
    SpecTable: TFDQuery;
    StateTable: TFDQuery;
    StudentTable: TFDQuery;
    SubjectTable: TFDQuery;
    TeacherTable: TFDQuery;
    DataSourceStudent: TDataSource;
    DataSourceSpec: TDataSource;
    DataSourceState: TDataSource;
    DataSourceSubject: TDataSource;
    DataSourceClass: TDataSource;
    DataSourceDiv: TDataSource;
    DataSourcePoint: TDataSource;
    DataSourceApsent: TDataSource;
    DataSourceTeacher: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbData: TdbData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.