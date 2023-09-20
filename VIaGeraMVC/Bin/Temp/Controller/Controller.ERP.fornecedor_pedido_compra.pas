
unit Controller.ERP.fornecedor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfornecedor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfornecedor;
    FModelList: TModelBaseList<TModelERPfornecedor>; 
    FModel: TModelERPfornecedor;
    procedure SetModel(const Value: TModelERPfornecedor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfornecedor>);

  public 
    property Model : TModelERPfornecedor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfornecedor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfornecedor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfornecedor>.Create;  
  Self.FModelList.Add(TModelERPfornecedor.Create); 
  Self.FModel           := TModelERPfornecedor.Create; 
  Self.FDal             := TDalERPfornecedor.Create( Param, True ); 
end; 

procedure TControllerERPfornecedor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfornecedor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfornecedor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfornecedor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfornecedor.SetModel(  
  const Value: TModelERPfornecedor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfornecedor.SetModelList(  
  const Value: TModelBaseList<TModelERPfornecedor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfornecedor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfornecedor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

