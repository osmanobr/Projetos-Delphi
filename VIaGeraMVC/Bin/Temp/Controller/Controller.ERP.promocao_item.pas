
unit Controller.ERP.promocao_historico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpromocaohistorico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpromocaohistorico;
    FModelList: TModelBaseList<TModelERPpromocaohistorico>; 
    FModel: TModelERPpromocaohistorico;
    procedure SetModel(const Value: TModelERPpromocaohistorico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpromocaohistorico>);

  public 
    property Model : TModelERPpromocaohistorico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpromocaohistorico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpromocaohistorico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpromocaohistorico>.Create;  
  Self.FModelList.Add(TModelERPpromocaohistorico.Create); 
  Self.FModel           := TModelERPpromocaohistorico.Create; 
  Self.FDal             := TDalERPpromocaohistorico.Create( Param, True ); 
end; 

procedure TControllerERPpromocaohistorico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpromocaohistorico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpromocaohistorico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpromocaohistorico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpromocaohistorico.SetModel(  
  const Value: TModelERPpromocaohistorico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpromocaohistorico.SetModelList(  
  const Value: TModelBaseList<TModelERPpromocaohistorico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpromocaohistorico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpromocaohistorico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

