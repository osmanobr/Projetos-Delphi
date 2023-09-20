
unit Controller.ERP.empresas_configuracoes_cte;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasconfiguracoescte = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasconfiguracoescte;
    FModelList: TModelBaseList<TModelERPempresasconfiguracoescte>; 
    FModel: TModelERPempresasconfiguracoescte;
    procedure SetModel(const Value: TModelERPempresasconfiguracoescte); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasconfiguracoescte>);

  public 
    property Model : TModelERPempresasconfiguracoescte read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasconfiguracoescte> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasconfiguracoescte.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasconfiguracoescte>.Create;  
  Self.FModelList.Add(TModelERPempresasconfiguracoescte.Create); 
  Self.FModel           := TModelERPempresasconfiguracoescte.Create; 
  Self.FDal             := TDalERPempresasconfiguracoescte.Create( Param, True ); 
end; 

procedure TControllerERPempresasconfiguracoescte.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasconfiguracoescte.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasconfiguracoescte.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasconfiguracoescte.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasconfiguracoescte.SetModel(  
  const Value: TModelERPempresasconfiguracoescte); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasconfiguracoescte.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasconfiguracoescte>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasconfiguracoescte.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasconfiguracoescte.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

