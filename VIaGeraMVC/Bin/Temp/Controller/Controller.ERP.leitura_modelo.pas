
unit Controller.ERP.leitura_condominio;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracondominio = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracondominio;
    FModelList: TModelBaseList<TModelERPleituracondominio>; 
    FModel: TModelERPleituracondominio;
    procedure SetModel(const Value: TModelERPleituracondominio); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracondominio>);

  public 
    property Model : TModelERPleituracondominio read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracondominio> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracondominio.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracondominio>.Create;  
  Self.FModelList.Add(TModelERPleituracondominio.Create); 
  Self.FModel           := TModelERPleituracondominio.Create; 
  Self.FDal             := TDalERPleituracondominio.Create( Param, True ); 
end; 

procedure TControllerERPleituracondominio.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracondominio.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracondominio.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracondominio.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracondominio.SetModel(  
  const Value: TModelERPleituracondominio); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracondominio.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracondominio>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracondominio.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracondominio.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

