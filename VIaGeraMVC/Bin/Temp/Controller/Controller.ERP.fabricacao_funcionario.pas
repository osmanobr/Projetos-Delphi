
unit Controller.ERP.fabricacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricacao;
    FModelList: TModelBaseList<TModelERPfabricacao>; 
    FModel: TModelERPfabricacao;
    procedure SetModel(const Value: TModelERPfabricacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricacao>);

  public 
    property Model : TModelERPfabricacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricacao>.Create;  
  Self.FModelList.Add(TModelERPfabricacao.Create); 
  Self.FModel           := TModelERPfabricacao.Create; 
  Self.FDal             := TDalERPfabricacao.Create( Param, True ); 
end; 

procedure TControllerERPfabricacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricacao.SetModel(  
  const Value: TModelERPfabricacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricacao.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

