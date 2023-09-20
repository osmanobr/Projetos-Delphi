
unit Controller.ERP.conta_pagar_comissao_parceiro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontapagarcomissaoparceiro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontapagarcomissaoparceiro;
    FModelList: TModelBaseList<TModelERPcontapagarcomissaoparceiro>; 
    FModel: TModelERPcontapagarcomissaoparceiro;
    procedure SetModel(const Value: TModelERPcontapagarcomissaoparceiro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontapagarcomissaoparceiro>);

  public 
    property Model : TModelERPcontapagarcomissaoparceiro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontapagarcomissaoparceiro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontapagarcomissaoparceiro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontapagarcomissaoparceiro>.Create;  
  Self.FModelList.Add(TModelERPcontapagarcomissaoparceiro.Create); 
  Self.FModel           := TModelERPcontapagarcomissaoparceiro.Create; 
  Self.FDal             := TDalERPcontapagarcomissaoparceiro.Create( Param, True ); 
end; 

procedure TControllerERPcontapagarcomissaoparceiro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontapagarcomissaoparceiro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontapagarcomissaoparceiro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontapagarcomissaoparceiro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontapagarcomissaoparceiro.SetModel(  
  const Value: TModelERPcontapagarcomissaoparceiro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontapagarcomissaoparceiro.SetModelList(  
  const Value: TModelBaseList<TModelERPcontapagarcomissaoparceiro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontapagarcomissaoparceiro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontapagarcomissaoparceiro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

