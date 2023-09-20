
unit Controller.ERP.fabricacao_processo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricacaoprocesso = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricacaoprocesso;
    FModelList: TModelBaseList<TModelERPfabricacaoprocesso>; 
    FModel: TModelERPfabricacaoprocesso;
    procedure SetModel(const Value: TModelERPfabricacaoprocesso); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricacaoprocesso>);

  public 
    property Model : TModelERPfabricacaoprocesso read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricacaoprocesso> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricacaoprocesso.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricacaoprocesso>.Create;  
  Self.FModelList.Add(TModelERPfabricacaoprocesso.Create); 
  Self.FModel           := TModelERPfabricacaoprocesso.Create; 
  Self.FDal             := TDalERPfabricacaoprocesso.Create( Param, True ); 
end; 

procedure TControllerERPfabricacaoprocesso.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricacaoprocesso.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricacaoprocesso.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricacaoprocesso.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricacaoprocesso.SetModel(  
  const Value: TModelERPfabricacaoprocesso); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricacaoprocesso.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricacaoprocesso>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricacaoprocesso.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricacaoprocesso.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

