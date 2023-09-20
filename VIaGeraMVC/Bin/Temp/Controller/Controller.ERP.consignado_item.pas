
unit Controller.ERP.consignado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPconsignado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPconsignado;
    FModelList: TModelBaseList<TModelERPconsignado>; 
    FModel: TModelERPconsignado;
    procedure SetModel(const Value: TModelERPconsignado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPconsignado>);

  public 
    property Model : TModelERPconsignado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPconsignado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPconsignado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPconsignado>.Create;  
  Self.FModelList.Add(TModelERPconsignado.Create); 
  Self.FModel           := TModelERPconsignado.Create; 
  Self.FDal             := TDalERPconsignado.Create( Param, True ); 
end; 

procedure TControllerERPconsignado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPconsignado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPconsignado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPconsignado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPconsignado.SetModel(  
  const Value: TModelERPconsignado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPconsignado.SetModelList(  
  const Value: TModelBaseList<TModelERPconsignado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPconsignado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPconsignado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

