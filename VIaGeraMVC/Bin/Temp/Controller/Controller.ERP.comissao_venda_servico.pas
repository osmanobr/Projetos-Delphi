
unit Controller.ERP.comissao_venda_produto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaovendaproduto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaovendaproduto;
    FModelList: TModelBaseList<TModelERPcomissaovendaproduto>; 
    FModel: TModelERPcomissaovendaproduto;
    procedure SetModel(const Value: TModelERPcomissaovendaproduto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaovendaproduto>);

  public 
    property Model : TModelERPcomissaovendaproduto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaovendaproduto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaovendaproduto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaovendaproduto>.Create;  
  Self.FModelList.Add(TModelERPcomissaovendaproduto.Create); 
  Self.FModel           := TModelERPcomissaovendaproduto.Create; 
  Self.FDal             := TDalERPcomissaovendaproduto.Create( Param, True ); 
end; 

procedure TControllerERPcomissaovendaproduto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaovendaproduto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaovendaproduto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaovendaproduto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaovendaproduto.SetModel(  
  const Value: TModelERPcomissaovendaproduto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaovendaproduto.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaovendaproduto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaovendaproduto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaovendaproduto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

