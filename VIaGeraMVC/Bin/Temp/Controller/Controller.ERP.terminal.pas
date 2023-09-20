
unit Controller.ERP.temp_etiquetas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtempetiquetas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtempetiquetas;
    FModelList: TModelBaseList<TModelERPtempetiquetas>; 
    FModel: TModelERPtempetiquetas;
    procedure SetModel(const Value: TModelERPtempetiquetas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtempetiquetas>);

  public 
    property Model : TModelERPtempetiquetas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtempetiquetas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtempetiquetas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtempetiquetas>.Create;  
  Self.FModelList.Add(TModelERPtempetiquetas.Create); 
  Self.FModel           := TModelERPtempetiquetas.Create; 
  Self.FDal             := TDalERPtempetiquetas.Create( Param, True ); 
end; 

procedure TControllerERPtempetiquetas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtempetiquetas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtempetiquetas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtempetiquetas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtempetiquetas.SetModel(  
  const Value: TModelERPtempetiquetas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtempetiquetas.SetModelList(  
  const Value: TModelBaseList<TModelERPtempetiquetas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtempetiquetas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtempetiquetas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

