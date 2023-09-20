
unit Controller.ERP.contrato_cliente;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontratocliente = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontratocliente;
    FModelList: TModelBaseList<TModelERPcontratocliente>; 
    FModel: TModelERPcontratocliente;
    procedure SetModel(const Value: TModelERPcontratocliente); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontratocliente>);

  public 
    property Model : TModelERPcontratocliente read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontratocliente> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontratocliente.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontratocliente>.Create;  
  Self.FModelList.Add(TModelERPcontratocliente.Create); 
  Self.FModel           := TModelERPcontratocliente.Create; 
  Self.FDal             := TDalERPcontratocliente.Create( Param, True ); 
end; 

procedure TControllerERPcontratocliente.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontratocliente.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontratocliente.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontratocliente.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontratocliente.SetModel(  
  const Value: TModelERPcontratocliente); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontratocliente.SetModelList(  
  const Value: TModelBaseList<TModelERPcontratocliente>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontratocliente.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontratocliente.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

