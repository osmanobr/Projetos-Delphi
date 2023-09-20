
unit Controller.ERP.contas_fixas_geradas_controle;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontasfixasgeradascontrole = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontasfixasgeradascontrole;
    FModelList: TModelBaseList<TModelERPcontasfixasgeradascontrole>; 
    FModel: TModelERPcontasfixasgeradascontrole;
    procedure SetModel(const Value: TModelERPcontasfixasgeradascontrole); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontasfixasgeradascontrole>);

  public 
    property Model : TModelERPcontasfixasgeradascontrole read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontasfixasgeradascontrole> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontasfixasgeradascontrole.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontasfixasgeradascontrole>.Create;  
  Self.FModelList.Add(TModelERPcontasfixasgeradascontrole.Create); 
  Self.FModel           := TModelERPcontasfixasgeradascontrole.Create; 
  Self.FDal             := TDalERPcontasfixasgeradascontrole.Create( Param, True ); 
end; 

procedure TControllerERPcontasfixasgeradascontrole.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontasfixasgeradascontrole.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontasfixasgeradascontrole.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontasfixasgeradascontrole.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontasfixasgeradascontrole.SetModel(  
  const Value: TModelERPcontasfixasgeradascontrole); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontasfixasgeradascontrole.SetModelList(  
  const Value: TModelBaseList<TModelERPcontasfixasgeradascontrole>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontasfixasgeradascontrole.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontasfixasgeradascontrole.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

