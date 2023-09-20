
unit Controller.ERP.leitura_coleta_importacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracoletaimportacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracoletaimportacao;
    FModelList: TModelBaseList<TModelERPleituracoletaimportacao>; 
    FModel: TModelERPleituracoletaimportacao;
    procedure SetModel(const Value: TModelERPleituracoletaimportacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracoletaimportacao>);

  public 
    property Model : TModelERPleituracoletaimportacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracoletaimportacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracoletaimportacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracoletaimportacao>.Create;  
  Self.FModelList.Add(TModelERPleituracoletaimportacao.Create); 
  Self.FModel           := TModelERPleituracoletaimportacao.Create; 
  Self.FDal             := TDalERPleituracoletaimportacao.Create( Param, True ); 
end; 

procedure TControllerERPleituracoletaimportacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracoletaimportacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracoletaimportacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracoletaimportacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracoletaimportacao.SetModel(  
  const Value: TModelERPleituracoletaimportacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracoletaimportacao.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracoletaimportacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracoletaimportacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracoletaimportacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

