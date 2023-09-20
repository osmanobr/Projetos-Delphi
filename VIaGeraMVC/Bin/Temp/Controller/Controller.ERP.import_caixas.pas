
unit Controller.ERP.import_barras;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportbarras = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportbarras;
    FModelList: TModelBaseList<TModelERPimportbarras>; 
    FModel: TModelERPimportbarras;
    procedure SetModel(const Value: TModelERPimportbarras); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportbarras>);

  public 
    property Model : TModelERPimportbarras read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportbarras> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportbarras.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportbarras>.Create;  
  Self.FModelList.Add(TModelERPimportbarras.Create); 
  Self.FModel           := TModelERPimportbarras.Create; 
  Self.FDal             := TDalERPimportbarras.Create( Param, True ); 
end; 

procedure TControllerERPimportbarras.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportbarras.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportbarras.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportbarras.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportbarras.SetModel(  
  const Value: TModelERPimportbarras); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportbarras.SetModelList(  
  const Value: TModelBaseList<TModelERPimportbarras>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportbarras.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportbarras.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

