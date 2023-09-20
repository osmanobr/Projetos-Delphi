
unit Controller.ERP.credencial_entrada;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcredencialentrada = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcredencialentrada;
    FModelList: TModelBaseList<TModelERPcredencialentrada>; 
    FModel: TModelERPcredencialentrada;
    procedure SetModel(const Value: TModelERPcredencialentrada); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcredencialentrada>);

  public 
    property Model : TModelERPcredencialentrada read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcredencialentrada> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcredencialentrada.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcredencialentrada>.Create;  
  Self.FModelList.Add(TModelERPcredencialentrada.Create); 
  Self.FModel           := TModelERPcredencialentrada.Create; 
  Self.FDal             := TDalERPcredencialentrada.Create( Param, True ); 
end; 

procedure TControllerERPcredencialentrada.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcredencialentrada.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcredencialentrada.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcredencialentrada.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcredencialentrada.SetModel(  
  const Value: TModelERPcredencialentrada); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcredencialentrada.SetModelList(  
  const Value: TModelBaseList<TModelERPcredencialentrada>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcredencialentrada.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcredencialentrada.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

