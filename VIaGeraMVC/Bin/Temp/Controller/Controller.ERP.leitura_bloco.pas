
unit Controller.ERP.leitura_apartamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituraapartamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituraapartamento;
    FModelList: TModelBaseList<TModelERPleituraapartamento>; 
    FModel: TModelERPleituraapartamento;
    procedure SetModel(const Value: TModelERPleituraapartamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituraapartamento>);

  public 
    property Model : TModelERPleituraapartamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituraapartamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituraapartamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituraapartamento>.Create;  
  Self.FModelList.Add(TModelERPleituraapartamento.Create); 
  Self.FModel           := TModelERPleituraapartamento.Create; 
  Self.FDal             := TDalERPleituraapartamento.Create( Param, True ); 
end; 

procedure TControllerERPleituraapartamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituraapartamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituraapartamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituraapartamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituraapartamento.SetModel(  
  const Value: TModelERPleituraapartamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituraapartamento.SetModelList(  
  const Value: TModelBaseList<TModelERPleituraapartamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituraapartamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituraapartamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

