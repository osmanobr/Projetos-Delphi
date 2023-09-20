
unit Controller.ERP.plano_conta;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPplanoconta = class(TControllerBase, IController) 
  private 
    FDal : TViewERPplanoconta;
    FModelList: TModelBaseList<TModelERPplanoconta>; 
    FModel: TModelERPplanoconta;
    procedure SetModel(const Value: TModelERPplanoconta); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPplanoconta>);

  public 
    property Model : TModelERPplanoconta read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPplanoconta> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPplanoconta.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPplanoconta>.Create;  
  Self.FModelList.Add(TModelERPplanoconta.Create); 
  Self.FModel           := TModelERPplanoconta.Create; 
  Self.FDal             := TDalERPplanoconta.Create( Param, True ); 
end; 

procedure TControllerERPplanoconta.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPplanoconta.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPplanoconta.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPplanoconta.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPplanoconta.SetModel(  
  const Value: TModelERPplanoconta); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPplanoconta.SetModelList(  
  const Value: TModelBaseList<TModelERPplanoconta>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPplanoconta.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPplanoconta.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

