
unit Controller.ERP.veiculos_transporte;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculostransporte = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculostransporte;
    FModelList: TModelBaseList<TModelERPveiculostransporte>; 
    FModel: TModelERPveiculostransporte;
    procedure SetModel(const Value: TModelERPveiculostransporte); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculostransporte>);

  public 
    property Model : TModelERPveiculostransporte read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculostransporte> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculostransporte.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculostransporte>.Create;  
  Self.FModelList.Add(TModelERPveiculostransporte.Create); 
  Self.FModel           := TModelERPveiculostransporte.Create; 
  Self.FDal             := TDalERPveiculostransporte.Create( Param, True ); 
end; 

procedure TControllerERPveiculostransporte.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculostransporte.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculostransporte.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculostransporte.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculostransporte.SetModel(  
  const Value: TModelERPveiculostransporte); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculostransporte.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculostransporte>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculostransporte.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculostransporte.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

