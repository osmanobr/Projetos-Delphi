
unit Controller.ERP.indicacao_servico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPindicacaoservico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPindicacaoservico;
    FModelList: TModelBaseList<TModelERPindicacaoservico>; 
    FModel: TModelERPindicacaoservico;
    procedure SetModel(const Value: TModelERPindicacaoservico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPindicacaoservico>);

  public 
    property Model : TModelERPindicacaoservico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPindicacaoservico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPindicacaoservico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPindicacaoservico>.Create;  
  Self.FModelList.Add(TModelERPindicacaoservico.Create); 
  Self.FModel           := TModelERPindicacaoservico.Create; 
  Self.FDal             := TDalERPindicacaoservico.Create( Param, True ); 
end; 

procedure TControllerERPindicacaoservico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPindicacaoservico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPindicacaoservico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPindicacaoservico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPindicacaoservico.SetModel(  
  const Value: TModelERPindicacaoservico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPindicacaoservico.SetModelList(  
  const Value: TModelBaseList<TModelERPindicacaoservico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPindicacaoservico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPindicacaoservico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

