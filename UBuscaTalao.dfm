�
 TFBUSCATALAO 0�  TPF0TfBuscaTalaofBuscaTalaoLeftTopBorderIconsbiSystemMenu BorderStylebsSingleCaption   Copia talão para o movimentoClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top WidthHeight�AlignalClientTabOrder  TPanelPanel2LeftTopWidthHeight3AlignalTop
BevelOuter	bvLoweredTabOrder  TLabelLabel1Left(TopWidthcHeight'Caption�   Seleciona o(s) talão(s) e depois pressiona o botão "Copia Talão"

Pode filtrar os talões também consultando pelo campo que esta em amareloFont.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TBitBtnBitBtn4LeftTop
Width}HeightHint+Copia os dados do pedido para a nota fiscalCaption   Copia TalãoFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintShowHint	TabOrder OnClickBitBtn4Click
Glyph.Data
j  f  BMf      v   (               �                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ����������  ����������  ��wwww����  �     x���  �����www�  �DDD�   x  ��������x  �DDD�DD�x  ��������x  �DDD�DD�x  ��������x  �D�  Dw�x  ������ x  �D�� �
x  ����� 
   �   G
��  ����� 
   ����  w
�  ������� �  ����������    TBitBtnBitBtn3Left�Top
Width}HeightHintFecha a janela atualCaption&FecharFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintShowHint	TabOrderOnClickBitBtn3Click
Glyph.Data
�   �   BM�       v   (               �   �  �               �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 88888������`8    8f 3330�f3330 f33 03f33 3f  �3���f  `3f33 3f33 03f333030�3330333330   33333333   TPanelPanel3LeftTop4WidthHeight�AlignalClient
BevelOuter	bvLoweredTabOrder 	TSMDBGrid	SMDBGrid1LeftTopWidth Height�AlignalClient
DataSourcedsqTalaoOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExitdgMultiSelect TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style FlatBandsFont.CharsetDEFAULT_CHARSETBandsFont.ColorclWindowTextBandsFont.Height�BandsFont.NameMS Sans SerifBandsFont.Style 	Groupings GridStyle.StylegsCustomGridStyle.OddColorclWindowGridStyle.EvenColorclWindowTitleHeight.PixelCountFooterColor	clBtnFace	ExOptionseoCheckBoxSelecteoENTERlikeTABeoKeepSelectioneoStandardPopupeoBLOBEditoreoTitleWordWrapeoShowFilterBar RegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBarsssHorizontalColCountRowCountColumns	AlignmenttaCenterExpanded	FieldNameTalaoTitle.AlignmenttaCenterTitle.Caption   TalãoWidth3Visible	 	AlignmenttaCenterExpanded	FieldName
CodProdutoTitle.AlignmenttaCenterTitle.Caption   Cód. ProdutoWidth8Visible	 	AlignmenttaCenterExpanded	FieldName
ReferenciaTitle.AlignmenttaCenterTitle.Caption   ReferênciaWidth� Visible	 Expanded	FieldNameNomeProdutoTitle.AlignmenttaCenterTitle.CaptionNome do ProdutoWidthVisible	 	AlignmenttaCenterExpanded	FieldName
QuantidadeTitle.AlignmenttaCenterWidthDVisible	 	AlignmenttaCenterExpanded	FieldNamePedidoClienteTitle.AlignmenttaCenterTitle.CaptionPedido Cliente (OC)WidthwVisible	 Expanded	FieldNameNomeClienteWidthVisible	 	AlignmenttaCenterExpanded	FieldNameDtGeradoTitle.AlignmenttaCenterTitle.Caption   Dt.EmissãoVisible	 	AlignmenttaCenterExpanded	FieldNameDtBaixaTitle.AlignmenttaCenterTitle.Caption	Dt. BaixaVisible	 Expanded	FieldNameQtdProduzidaTitle.AlignmenttaCenterTitle.CaptionQtd.ProduzidaVisible	 	AlignmenttaCenterExpanded	FieldNamePedidoTitle.AlignmenttaCenterTitle.CaptionPed. InternoVisible	      TQueryqTalaoDatabaseNameTabelasSQL.Strings5  SELECT Dbtalao.Talao, Dbtalao.CodProduto, Dbtalao.CodCor, Dbtalao.Quantidade, Dbtalao.Pedido, Dbtalao.ItemPedido, Dbtalao.PedidoCliente, Dbtalao.PedCliDif, Dbtalao.CodCliente, Dbtalao.DtBaixa, Dbtalao.QtdProduzida, Dbtalao.DtGerado, Dbproduto.Referencia, Dbcliente.Nome NomeCliente, Dbproduto.Nome NomeProdutoFROM "dbTalao.DB" Dbtalao&   INNER JOIN "dbCliente.DB" Dbcliente0   ON  (Dbtalao.CodCliente = Dbcliente.Codigo)  &   INNER JOIN "dbProduto.DB" Dbproduto0   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  "WHERE  (Dbtalao.Cancelado = FALSE)ORDER BY dbTalao.Talao  Left*Top�  TIntegerFieldqTalaoTalaoDisplayWidth		FieldNameTalao  TIntegerFieldqTalaoCodProdutoDisplayWidth	FieldName
CodProduto  TIntegerFieldqTalaoCodCorDisplayWidth	FieldNameCodCor  TFloatFieldqTalaoQuantidadeDisplayWidth	FieldName
Quantidade  TIntegerFieldqTalaoPedidoDisplayWidth	FieldNamePedido  TIntegerFieldqTalaoItemPedidoDisplayWidth	FieldName
ItemPedido  TStringFieldqTalaoPedidoClienteDisplayWidth	FieldNamePedidoCliente  TStringFieldqTalaoPedCliDifDisplayWidth		FieldName	PedCliDifSize  TIntegerFieldqTalaoCodClienteDisplayWidth	FieldName
CodCliente  
TDateFieldqTalaoDtBaixaDisplayWidth	FieldNameDtBaixa  TFloatFieldqTalaoQtdProduzidaDisplayWidth	FieldNameQtdProduzida  
TDateFieldqTalaoDtGeradoDisplayWidth	FieldNameDtGerado  TStringFieldqTalaoReferenciaDisplayWidth	FieldName
Referencia  TStringFieldqTalaoNomeClienteDisplayWidth0	FieldNameNomeClienteSize(  TStringFieldqTalaoNomeProdutoDisplayWidth0	FieldNameNomeProdutoSize(   TDataSourcedsqTalaoDataSetqTalaoLeftATop�    