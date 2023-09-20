
unit Controller.ERP.credencial_fotos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcredencialfotos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcredencialfotos;
    FModelList: TModelBaseList<TModelERPcredencialfotos>; 
    FModel: TModelERPcredencialfotos;
    procedure SetModel(const Value: TModelERPcredencialfotos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcredencialfotos>);

  public 
    property Model : TModelERPcredencialfotos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcredencialfotos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcredencialfotos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcredencialfotos>.Create;  
  Self.FModelList.Add(TModelERPcredencialfotos.Create); 
  Self.FModel           := TModelERPcredencialfotos.Create; 
  Self.FDal             := TDalERPcredencialfotos.Create( Param, True ); 
end; 

procedure TControllerERPcredencialfotos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcredencialfotos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcredencialfotos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcredencialfotos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcredencialfotos.SetModel(  
  const Value: TModelERPcredencialfotos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcredencialfotos.SetModelList(  
  const Value: TModelBaseList<TModelERPcredencialfotos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcredencialfotos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcredencialfotos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

