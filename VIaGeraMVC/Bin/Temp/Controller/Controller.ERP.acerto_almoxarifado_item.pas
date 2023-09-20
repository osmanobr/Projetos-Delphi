
unit Controller.ERP.acerto_almoxarifado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacertoalmoxarifado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacertoalmoxarifado;
    FModelList: TModelBaseList<TModelERPacertoalmoxarifado>; 
    FModel: TModelERPacertoalmoxarifado;
    procedure SetModel(const Value: TModelERPacertoalmoxarifado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacertoalmoxarifado>);

  public 
    property Model : TModelERPacertoalmoxarifado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacertoalmoxarifado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacertoalmoxarifado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacertoalmoxarifado>.Create;  
  Self.FModelList.Add(TModelERPacertoalmoxarifado.Create); 
  Self.FModel           := TModelERPacertoalmoxarifado.Create; 
  Self.FDal             := TDalERPacertoalmoxarifado.Create( Param, True ); 
end; 

procedure TControllerERPacertoalmoxarifado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacertoalmoxarifado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacertoalmoxarifado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacertoalmoxarifado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacertoalmoxarifado.SetModel(  
  const Value: TModelERPacertoalmoxarifado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacertoalmoxarifado.SetModelList(  
  const Value: TModelBaseList<TModelERPacertoalmoxarifado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacertoalmoxarifado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacertoalmoxarifado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

