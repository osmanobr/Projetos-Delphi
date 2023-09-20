
unit Controller.ERP.autorizacao_compra_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPautorizacaocompraitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPautorizacaocompraitem;
    FModelList: TModelBaseList<TModelERPautorizacaocompraitem>; 
    FModel: TModelERPautorizacaocompraitem;
    procedure SetModel(const Value: TModelERPautorizacaocompraitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPautorizacaocompraitem>);

  public 
    property Model : TModelERPautorizacaocompraitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPautorizacaocompraitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPautorizacaocompraitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPautorizacaocompraitem>.Create;  
  Self.FModelList.Add(TModelERPautorizacaocompraitem.Create); 
  Self.FModel           := TModelERPautorizacaocompraitem.Create; 
  Self.FDal             := TDalERPautorizacaocompraitem.Create( Param, True ); 
end; 

procedure TControllerERPautorizacaocompraitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPautorizacaocompraitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPautorizacaocompraitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPautorizacaocompraitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPautorizacaocompraitem.SetModel(  
  const Value: TModelERPautorizacaocompraitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPautorizacaocompraitem.SetModelList(  
  const Value: TModelBaseList<TModelERPautorizacaocompraitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPautorizacaocompraitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPautorizacaocompraitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

