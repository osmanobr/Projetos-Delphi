
unit Controller.ERP.conta_pagar;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontapagar = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontapagar;
    FModelList: TModelBaseList<TModelERPcontapagar>; 
    FModel: TModelERPcontapagar;
    procedure SetModel(const Value: TModelERPcontapagar); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontapagar>);

  public 
    property Model : TModelERPcontapagar read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontapagar> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontapagar.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontapagar>.Create;  
  Self.FModelList.Add(TModelERPcontapagar.Create); 
  Self.FModel           := TModelERPcontapagar.Create; 
  Self.FDal             := TDalERPcontapagar.Create( Param, True ); 
end; 

procedure TControllerERPcontapagar.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontapagar.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontapagar.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontapagar.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontapagar.SetModel(  
  const Value: TModelERPcontapagar); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontapagar.SetModelList(  
  const Value: TModelBaseList<TModelERPcontapagar>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontapagar.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontapagar.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

