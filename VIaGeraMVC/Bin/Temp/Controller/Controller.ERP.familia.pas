
unit Controller.ERP.fabricante_veiculo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricanteveiculo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricanteveiculo;
    FModelList: TModelBaseList<TModelERPfabricanteveiculo>; 
    FModel: TModelERPfabricanteveiculo;
    procedure SetModel(const Value: TModelERPfabricanteveiculo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricanteveiculo>);

  public 
    property Model : TModelERPfabricanteveiculo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricanteveiculo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricanteveiculo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricanteveiculo>.Create;  
  Self.FModelList.Add(TModelERPfabricanteveiculo.Create); 
  Self.FModel           := TModelERPfabricanteveiculo.Create; 
  Self.FDal             := TDalERPfabricanteveiculo.Create( Param, True ); 
end; 

procedure TControllerERPfabricanteveiculo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricanteveiculo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricanteveiculo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricanteveiculo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricanteveiculo.SetModel(  
  const Value: TModelERPfabricanteveiculo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricanteveiculo.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricanteveiculo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricanteveiculo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricanteveiculo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

