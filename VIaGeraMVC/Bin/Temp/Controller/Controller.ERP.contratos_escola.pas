
unit Controller.ERP.contrato_licitacao_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontratolicitacaoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontratolicitacaoitem;
    FModelList: TModelBaseList<TModelERPcontratolicitacaoitem>; 
    FModel: TModelERPcontratolicitacaoitem;
    procedure SetModel(const Value: TModelERPcontratolicitacaoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontratolicitacaoitem>);

  public 
    property Model : TModelERPcontratolicitacaoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontratolicitacaoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontratolicitacaoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontratolicitacaoitem>.Create;  
  Self.FModelList.Add(TModelERPcontratolicitacaoitem.Create); 
  Self.FModel           := TModelERPcontratolicitacaoitem.Create; 
  Self.FDal             := TDalERPcontratolicitacaoitem.Create( Param, True ); 
end; 

procedure TControllerERPcontratolicitacaoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontratolicitacaoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontratolicitacaoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontratolicitacaoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontratolicitacaoitem.SetModel(  
  const Value: TModelERPcontratolicitacaoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontratolicitacaoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPcontratolicitacaoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontratolicitacaoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontratolicitacaoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

