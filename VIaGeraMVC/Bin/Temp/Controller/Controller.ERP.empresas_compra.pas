
unit Controller.ERP.empresas_boleto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasboleto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasboleto;
    FModelList: TModelBaseList<TModelERPempresasboleto>; 
    FModel: TModelERPempresasboleto;
    procedure SetModel(const Value: TModelERPempresasboleto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasboleto>);

  public 
    property Model : TModelERPempresasboleto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasboleto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasboleto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasboleto>.Create;  
  Self.FModelList.Add(TModelERPempresasboleto.Create); 
  Self.FModel           := TModelERPempresasboleto.Create; 
  Self.FDal             := TDalERPempresasboleto.Create( Param, True ); 
end; 

procedure TControllerERPempresasboleto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasboleto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasboleto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasboleto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasboleto.SetModel(  
  const Value: TModelERPempresasboleto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasboleto.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasboleto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasboleto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasboleto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

