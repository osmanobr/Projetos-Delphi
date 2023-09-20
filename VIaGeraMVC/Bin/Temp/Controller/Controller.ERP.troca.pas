
unit Controller.ERP.tributacoes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtributacoes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtributacoes;
    FModelList: TModelBaseList<TModelERPtributacoes>; 
    FModel: TModelERPtributacoes;
    procedure SetModel(const Value: TModelERPtributacoes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtributacoes>);

  public 
    property Model : TModelERPtributacoes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtributacoes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtributacoes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtributacoes>.Create;  
  Self.FModelList.Add(TModelERPtributacoes.Create); 
  Self.FModel           := TModelERPtributacoes.Create; 
  Self.FDal             := TDalERPtributacoes.Create( Param, True ); 
end; 

procedure TControllerERPtributacoes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtributacoes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtributacoes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtributacoes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtributacoes.SetModel(  
  const Value: TModelERPtributacoes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtributacoes.SetModelList(  
  const Value: TModelBaseList<TModelERPtributacoes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtributacoes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtributacoes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

