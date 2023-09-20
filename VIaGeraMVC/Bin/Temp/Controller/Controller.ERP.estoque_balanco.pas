
unit Controller.ERP.estoque_almoxarifado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoquealmoxarifado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoquealmoxarifado;
    FModelList: TModelBaseList<TModelERPestoquealmoxarifado>; 
    FModel: TModelERPestoquealmoxarifado;
    procedure SetModel(const Value: TModelERPestoquealmoxarifado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoquealmoxarifado>);

  public 
    property Model : TModelERPestoquealmoxarifado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoquealmoxarifado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoquealmoxarifado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoquealmoxarifado>.Create;  
  Self.FModelList.Add(TModelERPestoquealmoxarifado.Create); 
  Self.FModel           := TModelERPestoquealmoxarifado.Create; 
  Self.FDal             := TDalERPestoquealmoxarifado.Create( Param, True ); 
end; 

procedure TControllerERPestoquealmoxarifado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoquealmoxarifado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoquealmoxarifado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoquealmoxarifado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoquealmoxarifado.SetModel(  
  const Value: TModelERPestoquealmoxarifado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoquealmoxarifado.SetModelList(  
  const Value: TModelBaseList<TModelERPestoquealmoxarifado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoquealmoxarifado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoquealmoxarifado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

