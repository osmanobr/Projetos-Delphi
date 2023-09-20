
unit Controller.ERP.empresas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresas;
    FModelList: TModelBaseList<TModelERPempresas>; 
    FModel: TModelERPempresas;
    procedure SetModel(const Value: TModelERPempresas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresas>);

  public 
    property Model : TModelERPempresas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresas>.Create;  
  Self.FModelList.Add(TModelERPempresas.Create); 
  Self.FModel           := TModelERPempresas.Create; 
  Self.FDal             := TDalERPempresas.Create( Param, True ); 
end; 

procedure TControllerERPempresas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresas.SetModel(  
  const Value: TModelERPempresas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresas.SetModelList(  
  const Value: TModelBaseList<TModelERPempresas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

