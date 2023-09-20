
unit Controller.ERP.veiculos_acessorios;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculosacessorios = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculosacessorios;
    FModelList: TModelBaseList<TModelERPveiculosacessorios>; 
    FModel: TModelERPveiculosacessorios;
    procedure SetModel(const Value: TModelERPveiculosacessorios); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculosacessorios>);

  public 
    property Model : TModelERPveiculosacessorios read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculosacessorios> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculosacessorios.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculosacessorios>.Create;  
  Self.FModelList.Add(TModelERPveiculosacessorios.Create); 
  Self.FModel           := TModelERPveiculosacessorios.Create; 
  Self.FDal             := TDalERPveiculosacessorios.Create( Param, True ); 
end; 

procedure TControllerERPveiculosacessorios.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculosacessorios.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculosacessorios.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculosacessorios.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculosacessorios.SetModel(  
  const Value: TModelERPveiculosacessorios); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculosacessorios.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculosacessorios>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculosacessorios.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculosacessorios.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

