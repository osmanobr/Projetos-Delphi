
unit Controller.ERP.cliente_inscricao_estadual;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclienteinscricaoestadual = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclienteinscricaoestadual;
    FModelList: TModelBaseList<TModelERPclienteinscricaoestadual>; 
    FModel: TModelERPclienteinscricaoestadual;
    procedure SetModel(const Value: TModelERPclienteinscricaoestadual); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclienteinscricaoestadual>);

  public 
    property Model : TModelERPclienteinscricaoestadual read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclienteinscricaoestadual> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclienteinscricaoestadual.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclienteinscricaoestadual>.Create;  
  Self.FModelList.Add(TModelERPclienteinscricaoestadual.Create); 
  Self.FModel           := TModelERPclienteinscricaoestadual.Create; 
  Self.FDal             := TDalERPclienteinscricaoestadual.Create( Param, True ); 
end; 

procedure TControllerERPclienteinscricaoestadual.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclienteinscricaoestadual.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclienteinscricaoestadual.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclienteinscricaoestadual.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclienteinscricaoestadual.SetModel(  
  const Value: TModelERPclienteinscricaoestadual); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclienteinscricaoestadual.SetModelList(  
  const Value: TModelBaseList<TModelERPclienteinscricaoestadual>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclienteinscricaoestadual.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclienteinscricaoestadual.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

