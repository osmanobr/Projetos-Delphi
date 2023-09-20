
unit Controller.ERP.veiculo_modelo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculomodelo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculomodelo;
    FModelList: TModelBaseList<TModelERPveiculomodelo>; 
    FModel: TModelERPveiculomodelo;
    procedure SetModel(const Value: TModelERPveiculomodelo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculomodelo>);

  public 
    property Model : TModelERPveiculomodelo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculomodelo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculomodelo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculomodelo>.Create;  
  Self.FModelList.Add(TModelERPveiculomodelo.Create); 
  Self.FModel           := TModelERPveiculomodelo.Create; 
  Self.FDal             := TDalERPveiculomodelo.Create( Param, True ); 
end; 

procedure TControllerERPveiculomodelo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculomodelo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculomodelo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculomodelo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculomodelo.SetModel(  
  const Value: TModelERPveiculomodelo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculomodelo.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculomodelo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculomodelo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculomodelo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

