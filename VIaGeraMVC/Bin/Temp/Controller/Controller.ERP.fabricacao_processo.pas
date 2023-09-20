
unit Controller.ERP.fabricacao_insumo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricacaoinsumo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricacaoinsumo;
    FModelList: TModelBaseList<TModelERPfabricacaoinsumo>; 
    FModel: TModelERPfabricacaoinsumo;
    procedure SetModel(const Value: TModelERPfabricacaoinsumo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricacaoinsumo>);

  public 
    property Model : TModelERPfabricacaoinsumo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricacaoinsumo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricacaoinsumo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricacaoinsumo>.Create;  
  Self.FModelList.Add(TModelERPfabricacaoinsumo.Create); 
  Self.FModel           := TModelERPfabricacaoinsumo.Create; 
  Self.FDal             := TDalERPfabricacaoinsumo.Create( Param, True ); 
end; 

procedure TControllerERPfabricacaoinsumo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricacaoinsumo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricacaoinsumo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricacaoinsumo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricacaoinsumo.SetModel(  
  const Value: TModelERPfabricacaoinsumo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricacaoinsumo.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricacaoinsumo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricacaoinsumo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricacaoinsumo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

