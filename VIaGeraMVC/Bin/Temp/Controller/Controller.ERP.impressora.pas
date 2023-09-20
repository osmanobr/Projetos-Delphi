
unit Controller.ERP.import_vendedor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportvendedor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportvendedor;
    FModelList: TModelBaseList<TModelERPimportvendedor>; 
    FModel: TModelERPimportvendedor;
    procedure SetModel(const Value: TModelERPimportvendedor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportvendedor>);

  public 
    property Model : TModelERPimportvendedor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportvendedor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportvendedor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportvendedor>.Create;  
  Self.FModelList.Add(TModelERPimportvendedor.Create); 
  Self.FModel           := TModelERPimportvendedor.Create; 
  Self.FDal             := TDalERPimportvendedor.Create( Param, True ); 
end; 

procedure TControllerERPimportvendedor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportvendedor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportvendedor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportvendedor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportvendedor.SetModel(  
  const Value: TModelERPimportvendedor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportvendedor.SetModelList(  
  const Value: TModelBaseList<TModelERPimportvendedor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportvendedor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportvendedor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

