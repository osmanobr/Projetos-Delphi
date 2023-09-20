
unit Controller.ERP.estoque_balanco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoquebalanco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoquebalanco;
    FModelList: TModelBaseList<TModelERPestoquebalanco>; 
    FModel: TModelERPestoquebalanco;
    procedure SetModel(const Value: TModelERPestoquebalanco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoquebalanco>);

  public 
    property Model : TModelERPestoquebalanco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoquebalanco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoquebalanco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoquebalanco>.Create;  
  Self.FModelList.Add(TModelERPestoquebalanco.Create); 
  Self.FModel           := TModelERPestoquebalanco.Create; 
  Self.FDal             := TDalERPestoquebalanco.Create( Param, True ); 
end; 

procedure TControllerERPestoquebalanco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoquebalanco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoquebalanco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoquebalanco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoquebalanco.SetModel(  
  const Value: TModelERPestoquebalanco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoquebalanco.SetModelList(  
  const Value: TModelBaseList<TModelERPestoquebalanco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoquebalanco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoquebalanco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

