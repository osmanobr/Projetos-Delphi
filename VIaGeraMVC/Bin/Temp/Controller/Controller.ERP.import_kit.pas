
unit Controller.ERP.import_estoque;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportestoque = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportestoque;
    FModelList: TModelBaseList<TModelERPimportestoque>; 
    FModel: TModelERPimportestoque;
    procedure SetModel(const Value: TModelERPimportestoque); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportestoque>);

  public 
    property Model : TModelERPimportestoque read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportestoque> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportestoque.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportestoque>.Create;  
  Self.FModelList.Add(TModelERPimportestoque.Create); 
  Self.FModel           := TModelERPimportestoque.Create; 
  Self.FDal             := TDalERPimportestoque.Create( Param, True ); 
end; 

procedure TControllerERPimportestoque.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportestoque.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportestoque.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportestoque.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportestoque.SetModel(  
  const Value: TModelERPimportestoque); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportestoque.SetModelList(  
  const Value: TModelBaseList<TModelERPimportestoque>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportestoque.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportestoque.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

