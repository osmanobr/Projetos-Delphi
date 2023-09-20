
unit Controller.ERP.conta_receber_transferencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontarecebertransferencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontarecebertransferencia;
    FModelList: TModelBaseList<TModelERPcontarecebertransferencia>; 
    FModel: TModelERPcontarecebertransferencia;
    procedure SetModel(const Value: TModelERPcontarecebertransferencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontarecebertransferencia>);

  public 
    property Model : TModelERPcontarecebertransferencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontarecebertransferencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontarecebertransferencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontarecebertransferencia>.Create;  
  Self.FModelList.Add(TModelERPcontarecebertransferencia.Create); 
  Self.FModel           := TModelERPcontarecebertransferencia.Create; 
  Self.FDal             := TDalERPcontarecebertransferencia.Create( Param, True ); 
end; 

procedure TControllerERPcontarecebertransferencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontarecebertransferencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontarecebertransferencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontarecebertransferencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontarecebertransferencia.SetModel(  
  const Value: TModelERPcontarecebertransferencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontarecebertransferencia.SetModelList(  
  const Value: TModelBaseList<TModelERPcontarecebertransferencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontarecebertransferencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontarecebertransferencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

