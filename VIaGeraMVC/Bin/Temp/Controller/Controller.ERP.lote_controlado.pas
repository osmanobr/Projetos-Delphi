
unit Controller.ERP.lote_comissao_pagamento_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlotecomissaopagamentoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlotecomissaopagamentoitem;
    FModelList: TModelBaseList<TModelERPlotecomissaopagamentoitem>; 
    FModel: TModelERPlotecomissaopagamentoitem;
    procedure SetModel(const Value: TModelERPlotecomissaopagamentoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlotecomissaopagamentoitem>);

  public 
    property Model : TModelERPlotecomissaopagamentoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlotecomissaopagamentoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlotecomissaopagamentoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlotecomissaopagamentoitem>.Create;  
  Self.FModelList.Add(TModelERPlotecomissaopagamentoitem.Create); 
  Self.FModel           := TModelERPlotecomissaopagamentoitem.Create; 
  Self.FDal             := TDalERPlotecomissaopagamentoitem.Create( Param, True ); 
end; 

procedure TControllerERPlotecomissaopagamentoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlotecomissaopagamentoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlotecomissaopagamentoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlotecomissaopagamentoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlotecomissaopagamentoitem.SetModel(  
  const Value: TModelERPlotecomissaopagamentoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlotecomissaopagamentoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlotecomissaopagamentoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlotecomissaopagamentoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlotecomissaopagamentoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

