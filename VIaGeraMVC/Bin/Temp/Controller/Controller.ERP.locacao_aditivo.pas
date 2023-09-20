
unit Controller.ERP.locacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacao;
    FModelList: TModelBaseList<TModelERPlocacao>; 
    FModel: TModelERPlocacao;
    procedure SetModel(const Value: TModelERPlocacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacao>);

  public 
    property Model : TModelERPlocacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacao>.Create;  
  Self.FModelList.Add(TModelERPlocacao.Create); 
  Self.FModel           := TModelERPlocacao.Create; 
  Self.FDal             := TDalERPlocacao.Create( Param, True ); 
end; 

procedure TControllerERPlocacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacao.SetModel(  
  const Value: TModelERPlocacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacao.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

