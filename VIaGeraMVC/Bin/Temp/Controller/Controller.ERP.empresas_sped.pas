
unit Controller.ERP.empresas_relatorios;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasrelatorios = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasrelatorios;
    FModelList: TModelBaseList<TModelERPempresasrelatorios>; 
    FModel: TModelERPempresasrelatorios;
    procedure SetModel(const Value: TModelERPempresasrelatorios); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasrelatorios>);

  public 
    property Model : TModelERPempresasrelatorios read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasrelatorios> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasrelatorios.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasrelatorios>.Create;  
  Self.FModelList.Add(TModelERPempresasrelatorios.Create); 
  Self.FModel           := TModelERPempresasrelatorios.Create; 
  Self.FDal             := TDalERPempresasrelatorios.Create( Param, True ); 
end; 

procedure TControllerERPempresasrelatorios.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasrelatorios.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasrelatorios.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasrelatorios.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasrelatorios.SetModel(  
  const Value: TModelERPempresasrelatorios); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasrelatorios.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasrelatorios>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasrelatorios.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasrelatorios.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

