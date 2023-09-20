
unit Controller.ERP.comissao_os_produto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaoosproduto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaoosproduto;
    FModelList: TModelBaseList<TModelERPcomissaoosproduto>; 
    FModel: TModelERPcomissaoosproduto;
    procedure SetModel(const Value: TModelERPcomissaoosproduto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaoosproduto>);

  public 
    property Model : TModelERPcomissaoosproduto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaoosproduto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaoosproduto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaoosproduto>.Create;  
  Self.FModelList.Add(TModelERPcomissaoosproduto.Create); 
  Self.FModel           := TModelERPcomissaoosproduto.Create; 
  Self.FDal             := TDalERPcomissaoosproduto.Create( Param, True ); 
end; 

procedure TControllerERPcomissaoosproduto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaoosproduto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaoosproduto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaoosproduto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaoosproduto.SetModel(  
  const Value: TModelERPcomissaoosproduto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaoosproduto.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaoosproduto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaoosproduto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaoosproduto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

