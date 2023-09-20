
unit Controller.ERP.movimentacao_almoxarifado_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentacaoalmoxarifadoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentacaoalmoxarifadoitem;
    FModelList: TModelBaseList<TModelERPmovimentacaoalmoxarifadoitem>; 
    FModel: TModelERPmovimentacaoalmoxarifadoitem;
    procedure SetModel(const Value: TModelERPmovimentacaoalmoxarifadoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentacaoalmoxarifadoitem>);

  public 
    property Model : TModelERPmovimentacaoalmoxarifadoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentacaoalmoxarifadoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentacaoalmoxarifadoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentacaoalmoxarifadoitem>.Create;  
  Self.FModelList.Add(TModelERPmovimentacaoalmoxarifadoitem.Create); 
  Self.FModel           := TModelERPmovimentacaoalmoxarifadoitem.Create; 
  Self.FDal             := TDalERPmovimentacaoalmoxarifadoitem.Create( Param, True ); 
end; 

procedure TControllerERPmovimentacaoalmoxarifadoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentacaoalmoxarifadoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentacaoalmoxarifadoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentacaoalmoxarifadoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentacaoalmoxarifadoitem.SetModel(  
  const Value: TModelERPmovimentacaoalmoxarifadoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentacaoalmoxarifadoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentacaoalmoxarifadoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentacaoalmoxarifadoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentacaoalmoxarifadoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

