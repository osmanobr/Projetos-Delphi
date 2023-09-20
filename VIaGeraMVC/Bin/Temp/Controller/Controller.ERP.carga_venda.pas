
unit Controller.ERP.carga_pdv_historico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcargapdvhistorico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcargapdvhistorico;
    FModelList: TModelBaseList<TModelERPcargapdvhistorico>; 
    FModel: TModelERPcargapdvhistorico;
    procedure SetModel(const Value: TModelERPcargapdvhistorico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcargapdvhistorico>);

  public 
    property Model : TModelERPcargapdvhistorico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcargapdvhistorico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcargapdvhistorico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcargapdvhistorico>.Create;  
  Self.FModelList.Add(TModelERPcargapdvhistorico.Create); 
  Self.FModel           := TModelERPcargapdvhistorico.Create; 
  Self.FDal             := TDalERPcargapdvhistorico.Create( Param, True ); 
end; 

procedure TControllerERPcargapdvhistorico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcargapdvhistorico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcargapdvhistorico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcargapdvhistorico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcargapdvhistorico.SetModel(  
  const Value: TModelERPcargapdvhistorico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcargapdvhistorico.SetModelList(  
  const Value: TModelBaseList<TModelERPcargapdvhistorico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcargapdvhistorico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcargapdvhistorico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

