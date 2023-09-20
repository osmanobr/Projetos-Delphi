
unit Controller.ERP.cst_piscofins;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcstpiscofins = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcstpiscofins;
    FModelList: TModelBaseList<TModelERPcstpiscofins>; 
    FModel: TModelERPcstpiscofins;
    procedure SetModel(const Value: TModelERPcstpiscofins); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcstpiscofins>);

  public 
    property Model : TModelERPcstpiscofins read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcstpiscofins> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcstpiscofins.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcstpiscofins>.Create;  
  Self.FModelList.Add(TModelERPcstpiscofins.Create); 
  Self.FModel           := TModelERPcstpiscofins.Create; 
  Self.FDal             := TDalERPcstpiscofins.Create( Param, True ); 
end; 

procedure TControllerERPcstpiscofins.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcstpiscofins.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcstpiscofins.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcstpiscofins.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcstpiscofins.SetModel(  
  const Value: TModelERPcstpiscofins); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcstpiscofins.SetModelList(  
  const Value: TModelBaseList<TModelERPcstpiscofins>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcstpiscofins.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcstpiscofins.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

