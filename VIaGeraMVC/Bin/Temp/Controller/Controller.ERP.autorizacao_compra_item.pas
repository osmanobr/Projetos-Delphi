
unit Controller.ERP.autorizacao_compra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPautorizacaocompra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPautorizacaocompra;
    FModelList: TModelBaseList<TModelERPautorizacaocompra>; 
    FModel: TModelERPautorizacaocompra;
    procedure SetModel(const Value: TModelERPautorizacaocompra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPautorizacaocompra>);

  public 
    property Model : TModelERPautorizacaocompra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPautorizacaocompra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPautorizacaocompra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPautorizacaocompra>.Create;  
  Self.FModelList.Add(TModelERPautorizacaocompra.Create); 
  Self.FModel           := TModelERPautorizacaocompra.Create; 
  Self.FDal             := TDalERPautorizacaocompra.Create( Param, True ); 
end; 

procedure TControllerERPautorizacaocompra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPautorizacaocompra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPautorizacaocompra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPautorizacaocompra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPautorizacaocompra.SetModel(  
  const Value: TModelERPautorizacaocompra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPautorizacaocompra.SetModelList(  
  const Value: TModelBaseList<TModelERPautorizacaocompra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPautorizacaocompra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPautorizacaocompra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

