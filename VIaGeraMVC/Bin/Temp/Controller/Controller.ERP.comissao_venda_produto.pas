
unit Controller.ERP.comissao_venda;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaovenda = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaovenda;
    FModelList: TModelBaseList<TModelERPcomissaovenda>; 
    FModel: TModelERPcomissaovenda;
    procedure SetModel(const Value: TModelERPcomissaovenda); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaovenda>);

  public 
    property Model : TModelERPcomissaovenda read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaovenda> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaovenda.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaovenda>.Create;  
  Self.FModelList.Add(TModelERPcomissaovenda.Create); 
  Self.FModel           := TModelERPcomissaovenda.Create; 
  Self.FDal             := TDalERPcomissaovenda.Create( Param, True ); 
end; 

procedure TControllerERPcomissaovenda.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaovenda.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaovenda.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaovenda.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaovenda.SetModel(  
  const Value: TModelERPcomissaovenda); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaovenda.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaovenda>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaovenda.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaovenda.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

