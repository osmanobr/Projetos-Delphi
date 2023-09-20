
unit Controller.ERP.leitura_coleta_foto_importacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracoletafotoimportacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracoletafotoimportacao;
    FModelList: TModelBaseList<TModelERPleituracoletafotoimportacao>; 
    FModel: TModelERPleituracoletafotoimportacao;
    procedure SetModel(const Value: TModelERPleituracoletafotoimportacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracoletafotoimportacao>);

  public 
    property Model : TModelERPleituracoletafotoimportacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracoletafotoimportacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracoletafotoimportacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracoletafotoimportacao>.Create;  
  Self.FModelList.Add(TModelERPleituracoletafotoimportacao.Create); 
  Self.FModel           := TModelERPleituracoletafotoimportacao.Create; 
  Self.FDal             := TDalERPleituracoletafotoimportacao.Create( Param, True ); 
end; 

procedure TControllerERPleituracoletafotoimportacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracoletafotoimportacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracoletafotoimportacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracoletafotoimportacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracoletafotoimportacao.SetModel(  
  const Value: TModelERPleituracoletafotoimportacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracoletafotoimportacao.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracoletafotoimportacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracoletafotoimportacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracoletafotoimportacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

