
unit Controller.ERP.declaracao_importacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdeclaracaoimportacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdeclaracaoimportacao;
    FModelList: TModelBaseList<TModelERPdeclaracaoimportacao>; 
    FModel: TModelERPdeclaracaoimportacao;
    procedure SetModel(const Value: TModelERPdeclaracaoimportacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdeclaracaoimportacao>);

  public 
    property Model : TModelERPdeclaracaoimportacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdeclaracaoimportacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdeclaracaoimportacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdeclaracaoimportacao>.Create;  
  Self.FModelList.Add(TModelERPdeclaracaoimportacao.Create); 
  Self.FModel           := TModelERPdeclaracaoimportacao.Create; 
  Self.FDal             := TDalERPdeclaracaoimportacao.Create( Param, True ); 
end; 

procedure TControllerERPdeclaracaoimportacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdeclaracaoimportacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdeclaracaoimportacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdeclaracaoimportacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdeclaracaoimportacao.SetModel(  
  const Value: TModelERPdeclaracaoimportacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdeclaracaoimportacao.SetModelList(  
  const Value: TModelBaseList<TModelERPdeclaracaoimportacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdeclaracaoimportacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdeclaracaoimportacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

