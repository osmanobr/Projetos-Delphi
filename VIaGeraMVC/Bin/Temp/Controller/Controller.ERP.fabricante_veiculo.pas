
unit Controller.ERP.fabricante;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricante = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricante;
    FModelList: TModelBaseList<TModelERPfabricante>; 
    FModel: TModelERPfabricante;
    procedure SetModel(const Value: TModelERPfabricante); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricante>);

  public 
    property Model : TModelERPfabricante read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricante> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricante.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricante>.Create;  
  Self.FModelList.Add(TModelERPfabricante.Create); 
  Self.FModel           := TModelERPfabricante.Create; 
  Self.FDal             := TDalERPfabricante.Create( Param, True ); 
end; 

procedure TControllerERPfabricante.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricante.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricante.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricante.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricante.SetModel(  
  const Value: TModelERPfabricante); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricante.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricante>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricante.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricante.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

