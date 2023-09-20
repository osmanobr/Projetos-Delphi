
unit Controller.ERP.dados_boleto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdadosboleto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdadosboleto;
    FModelList: TModelBaseList<TModelERPdadosboleto>; 
    FModel: TModelERPdadosboleto;
    procedure SetModel(const Value: TModelERPdadosboleto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdadosboleto>);

  public 
    property Model : TModelERPdadosboleto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdadosboleto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdadosboleto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdadosboleto>.Create;  
  Self.FModelList.Add(TModelERPdadosboleto.Create); 
  Self.FModel           := TModelERPdadosboleto.Create; 
  Self.FDal             := TDalERPdadosboleto.Create( Param, True ); 
end; 

procedure TControllerERPdadosboleto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdadosboleto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdadosboleto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdadosboleto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdadosboleto.SetModel(  
  const Value: TModelERPdadosboleto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdadosboleto.SetModelList(  
  const Value: TModelBaseList<TModelERPdadosboleto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdadosboleto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdadosboleto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

