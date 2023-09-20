
unit Controller.ERP.os_classificacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPosclassificacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPosclassificacao;
    FModelList: TModelBaseList<TModelERPosclassificacao>; 
    FModel: TModelERPosclassificacao;
    procedure SetModel(const Value: TModelERPosclassificacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPosclassificacao>);

  public 
    property Model : TModelERPosclassificacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPosclassificacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPosclassificacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPosclassificacao>.Create;  
  Self.FModelList.Add(TModelERPosclassificacao.Create); 
  Self.FModel           := TModelERPosclassificacao.Create; 
  Self.FDal             := TDalERPosclassificacao.Create( Param, True ); 
end; 

procedure TControllerERPosclassificacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPosclassificacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPosclassificacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPosclassificacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPosclassificacao.SetModel(  
  const Value: TModelERPosclassificacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPosclassificacao.SetModelList(  
  const Value: TModelBaseList<TModelERPosclassificacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPosclassificacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPosclassificacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

