
unit Controller.ERP.reajuste_preco_itens;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreajusteprecoitens = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreajusteprecoitens;
    FModelList: TModelBaseList<TModelERPreajusteprecoitens>; 
    FModel: TModelERPreajusteprecoitens;
    procedure SetModel(const Value: TModelERPreajusteprecoitens); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreajusteprecoitens>);

  public 
    property Model : TModelERPreajusteprecoitens read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreajusteprecoitens> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreajusteprecoitens.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreajusteprecoitens>.Create;  
  Self.FModelList.Add(TModelERPreajusteprecoitens.Create); 
  Self.FModel           := TModelERPreajusteprecoitens.Create; 
  Self.FDal             := TDalERPreajusteprecoitens.Create( Param, True ); 
end; 

procedure TControllerERPreajusteprecoitens.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreajusteprecoitens.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreajusteprecoitens.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreajusteprecoitens.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreajusteprecoitens.SetModel(  
  const Value: TModelERPreajusteprecoitens); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreajusteprecoitens.SetModelList(  
  const Value: TModelBaseList<TModelERPreajusteprecoitens>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreajusteprecoitens.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreajusteprecoitens.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

