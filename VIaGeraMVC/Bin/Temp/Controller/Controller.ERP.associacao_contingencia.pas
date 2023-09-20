
unit Controller.ERP.almoxarifado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPalmoxarifado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPalmoxarifado;
    FModelList: TModelBaseList<TModelERPalmoxarifado>; 
    FModel: TModelERPalmoxarifado;
    procedure SetModel(const Value: TModelERPalmoxarifado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPalmoxarifado>);

  public 
    property Model : TModelERPalmoxarifado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPalmoxarifado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPalmoxarifado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPalmoxarifado>.Create;  
  Self.FModelList.Add(TModelERPalmoxarifado.Create); 
  Self.FModel           := TModelERPalmoxarifado.Create; 
  Self.FDal             := TDalERPalmoxarifado.Create( Param, True ); 
end; 

procedure TControllerERPalmoxarifado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPalmoxarifado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPalmoxarifado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPalmoxarifado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPalmoxarifado.SetModel(  
  const Value: TModelERPalmoxarifado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPalmoxarifado.SetModelList(  
  const Value: TModelBaseList<TModelERPalmoxarifado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPalmoxarifado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPalmoxarifado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

