
unit Controller.ERP.contrato_licitacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontratolicitacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontratolicitacao;
    FModelList: TModelBaseList<TModelERPcontratolicitacao>; 
    FModel: TModelERPcontratolicitacao;
    procedure SetModel(const Value: TModelERPcontratolicitacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontratolicitacao>);

  public 
    property Model : TModelERPcontratolicitacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontratolicitacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontratolicitacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontratolicitacao>.Create;  
  Self.FModelList.Add(TModelERPcontratolicitacao.Create); 
  Self.FModel           := TModelERPcontratolicitacao.Create; 
  Self.FDal             := TDalERPcontratolicitacao.Create( Param, True ); 
end; 

procedure TControllerERPcontratolicitacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontratolicitacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontratolicitacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontratolicitacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontratolicitacao.SetModel(  
  const Value: TModelERPcontratolicitacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontratolicitacao.SetModelList(  
  const Value: TModelBaseList<TModelERPcontratolicitacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontratolicitacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontratolicitacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

