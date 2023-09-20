
unit Controller.ERP.lancamento_vendedor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlancamentovendedor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlancamentovendedor;
    FModelList: TModelBaseList<TModelERPlancamentovendedor>; 
    FModel: TModelERPlancamentovendedor;
    procedure SetModel(const Value: TModelERPlancamentovendedor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlancamentovendedor>);

  public 
    property Model : TModelERPlancamentovendedor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlancamentovendedor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlancamentovendedor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlancamentovendedor>.Create;  
  Self.FModelList.Add(TModelERPlancamentovendedor.Create); 
  Self.FModel           := TModelERPlancamentovendedor.Create; 
  Self.FDal             := TDalERPlancamentovendedor.Create( Param, True ); 
end; 

procedure TControllerERPlancamentovendedor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlancamentovendedor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlancamentovendedor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlancamentovendedor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlancamentovendedor.SetModel(  
  const Value: TModelERPlancamentovendedor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlancamentovendedor.SetModelList(  
  const Value: TModelBaseList<TModelERPlancamentovendedor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlancamentovendedor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlancamentovendedor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

