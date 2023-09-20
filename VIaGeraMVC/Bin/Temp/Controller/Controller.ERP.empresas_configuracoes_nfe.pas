
unit Controller.ERP.empresas_configuracoes_nfce;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasconfiguracoesnfce = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasconfiguracoesnfce;
    FModelList: TModelBaseList<TModelERPempresasconfiguracoesnfce>; 
    FModel: TModelERPempresasconfiguracoesnfce;
    procedure SetModel(const Value: TModelERPempresasconfiguracoesnfce); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasconfiguracoesnfce>);

  public 
    property Model : TModelERPempresasconfiguracoesnfce read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasconfiguracoesnfce> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasconfiguracoesnfce.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasconfiguracoesnfce>.Create;  
  Self.FModelList.Add(TModelERPempresasconfiguracoesnfce.Create); 
  Self.FModel           := TModelERPempresasconfiguracoesnfce.Create; 
  Self.FDal             := TDalERPempresasconfiguracoesnfce.Create( Param, True ); 
end; 

procedure TControllerERPempresasconfiguracoesnfce.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasconfiguracoesnfce.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasconfiguracoesnfce.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasconfiguracoesnfce.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasconfiguracoesnfce.SetModel(  
  const Value: TModelERPempresasconfiguracoesnfce); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasconfiguracoesnfce.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasconfiguracoesnfce>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasconfiguracoesnfce.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasconfiguracoesnfce.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

