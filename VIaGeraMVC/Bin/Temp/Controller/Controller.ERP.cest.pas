
unit Controller.ERP.central_custodia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcentralcustodia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcentralcustodia;
    FModelList: TModelBaseList<TModelERPcentralcustodia>; 
    FModel: TModelERPcentralcustodia;
    procedure SetModel(const Value: TModelERPcentralcustodia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcentralcustodia>);

  public 
    property Model : TModelERPcentralcustodia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcentralcustodia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcentralcustodia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcentralcustodia>.Create;  
  Self.FModelList.Add(TModelERPcentralcustodia.Create); 
  Self.FModel           := TModelERPcentralcustodia.Create; 
  Self.FDal             := TDalERPcentralcustodia.Create( Param, True ); 
end; 

procedure TControllerERPcentralcustodia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcentralcustodia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcentralcustodia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcentralcustodia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcentralcustodia.SetModel(  
  const Value: TModelERPcentralcustodia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcentralcustodia.SetModelList(  
  const Value: TModelBaseList<TModelERPcentralcustodia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcentralcustodia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcentralcustodia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

