
unit Controller.ERP.estoque_insumo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoqueinsumo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoqueinsumo;
    FModelList: TModelBaseList<TModelERPestoqueinsumo>; 
    FModel: TModelERPestoqueinsumo;
    procedure SetModel(const Value: TModelERPestoqueinsumo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoqueinsumo>);

  public 
    property Model : TModelERPestoqueinsumo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoqueinsumo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoqueinsumo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoqueinsumo>.Create;  
  Self.FModelList.Add(TModelERPestoqueinsumo.Create); 
  Self.FModel           := TModelERPestoqueinsumo.Create; 
  Self.FDal             := TDalERPestoqueinsumo.Create( Param, True ); 
end; 

procedure TControllerERPestoqueinsumo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoqueinsumo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoqueinsumo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoqueinsumo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoqueinsumo.SetModel(  
  const Value: TModelERPestoqueinsumo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoqueinsumo.SetModelList(  
  const Value: TModelBaseList<TModelERPestoqueinsumo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoqueinsumo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoqueinsumo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

