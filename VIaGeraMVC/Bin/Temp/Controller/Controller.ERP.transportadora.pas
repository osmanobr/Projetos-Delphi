
unit Controller.ERP.transferencia_portador;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtransferenciaportador = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtransferenciaportador;
    FModelList: TModelBaseList<TModelERPtransferenciaportador>; 
    FModel: TModelERPtransferenciaportador;
    procedure SetModel(const Value: TModelERPtransferenciaportador); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtransferenciaportador>);

  public 
    property Model : TModelERPtransferenciaportador read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtransferenciaportador> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtransferenciaportador.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtransferenciaportador>.Create;  
  Self.FModelList.Add(TModelERPtransferenciaportador.Create); 
  Self.FModel           := TModelERPtransferenciaportador.Create; 
  Self.FDal             := TDalERPtransferenciaportador.Create( Param, True ); 
end; 

procedure TControllerERPtransferenciaportador.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtransferenciaportador.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtransferenciaportador.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtransferenciaportador.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtransferenciaportador.SetModel(  
  const Value: TModelERPtransferenciaportador); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtransferenciaportador.SetModelList(  
  const Value: TModelBaseList<TModelERPtransferenciaportador>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtransferenciaportador.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtransferenciaportador.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

