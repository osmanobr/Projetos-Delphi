
unit Controller.ERP.ncm_tributacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPncmtributacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPncmtributacao;
    FModelList: TModelBaseList<TModelERPncmtributacao>; 
    FModel: TModelERPncmtributacao;
    procedure SetModel(const Value: TModelERPncmtributacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPncmtributacao>);

  public 
    property Model : TModelERPncmtributacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPncmtributacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPncmtributacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPncmtributacao>.Create;  
  Self.FModelList.Add(TModelERPncmtributacao.Create); 
  Self.FModel           := TModelERPncmtributacao.Create; 
  Self.FDal             := TDalERPncmtributacao.Create( Param, True ); 
end; 

procedure TControllerERPncmtributacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPncmtributacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPncmtributacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPncmtributacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPncmtributacao.SetModel(  
  const Value: TModelERPncmtributacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPncmtributacao.SetModelList(  
  const Value: TModelBaseList<TModelERPncmtributacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPncmtributacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPncmtributacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

