unit UDM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBTables, DBIProcs;

type
  TDM2 = class(TDataModule)
    tEstoqueMatMov2: TTable;
    tEstoqueMatMov2NumMov: TIntegerField;
    qEquipEPI: TQuery;
    qEquipEPICodigo: TIntegerField;
    qEquipEPINome: TStringField;
    qEquipEPIQtdMes: TIntegerField;
    dsqEquipEPI: TDataSource;
    qProximaNota: TQuery;
    qProximaNotaNumNota: TIntegerField;
    qPais: TQuery;
    qPaisID: TIntegerField;
    qPaisPais: TStringField;
    qPaisCodPais: TStringField;
    dsqPais: TDataSource;
    qVale: TQuery;
    qValeVlrTotal: TFloatField;
    tFilial2: TTable;
    tFilial2Codigo: TIntegerField;
    tFilial2Empresa: TStringField;
    tFilial2Endereco: TStringField;
    tFilial2Bairro: TStringField;
    tFilial2Cep: TStringField;
    tFilial2Cidade: TStringField;
    tFilial2Estado: TStringField;
    tFilial2Tel: TStringField;
    tFilial2Tel2: TStringField;
    tFilial2Fax: TStringField;
    tFilial2CNPJ: TStringField;
    tFilial2Inscr: TStringField;
    tFilial2Simples: TBooleanField;
    tFilial2Email: TStringField;
    tFilial2SimplesGaucho: TBooleanField;
    tFilial2ImpSimplesGaucho: TBooleanField;
    tFilial2EndLogo: TStringField;
    tFilial2NomeInterno: TStringField;
    tFilial2CalculaIPI: TBooleanField;
    tFilial2Inativo: TBooleanField;
    tFilial2CodCidade: TIntegerField;
    tFilial2InscMunicipal: TStringField;
    tFilial2CNAE: TStringField;
    tFilial2NumEnd: TStringField;
    tFilial2HomePage: TStringField;
    tFilial2UsarICMSimples: TBooleanField;
    tFilial2CodRegimeTrib: TIntegerField;
    tFilial2CodPis: TStringField;
    tFilial2CodCofins: TStringField;
    tFilial2TipoPis: TStringField;
    tFilial2TipoCofins: TStringField;
    tFilial2PercCofins: TFloatField;
    tFilial2PercPis: TFloatField;
    tFilial2CodSitTrib: TIntegerField;
    tFilial2CodCSTIPI: TStringField;
    tFilial2DtEstoque: TDateField;
    tFilial2EmailNfe: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }                       
  end;

var
  DM2: TDM2;

implementation

uses UDM1;

{$R *.DFM}

end.

