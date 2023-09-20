
unit Controller.ERP.import_caixas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportcaixas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportcaixas;
    FModelList: TModelBaseList<TModelERPimportcaixas>; 
    FModel: TModelERPimportcaixas;
    procedure SetModel(const Value: TModelERPimportcaixas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportcaixas>);

  public 
    property Model : TModelERPimportcaixas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportcaixas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportcaixas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportcaixas>.Create;  
  Self.FModelList.Add(TModelERPimportcaixas.Create); 
  Self.FModel           := TModelERPimportcaixas.Create; 
  Self.FDal             := TDalERPimportcaixas.Create( Param, True ); 
end; 

procedure TControllerERPimportcaixas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportcaixas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportcaixas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportcaixas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportcaixas.SetModel(  
  const Value: TModelERPimportcaixas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportcaixas.SetModelList(  
  const Value: TModelBaseList<TModelERPimportcaixas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportcaixas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportcaixas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

