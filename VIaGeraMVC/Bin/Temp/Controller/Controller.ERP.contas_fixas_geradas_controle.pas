
unit Controller.ERP.contas_fixas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontasfixas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontasfixas;
    FModelList: TModelBaseList<TModelERPcontasfixas>; 
    FModel: TModelERPcontasfixas;
    procedure SetModel(const Value: TModelERPcontasfixas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontasfixas>);

  public 
    property Model : TModelERPcontasfixas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontasfixas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontasfixas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontasfixas>.Create;  
  Self.FModelList.Add(TModelERPcontasfixas.Create); 
  Self.FModel           := TModelERPcontasfixas.Create; 
  Self.FDal             := TDalERPcontasfixas.Create( Param, True ); 
end; 

procedure TControllerERPcontasfixas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontasfixas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontasfixas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontasfixas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontasfixas.SetModel(  
  const Value: TModelERPcontasfixas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontasfixas.SetModelList(  
  const Value: TModelBaseList<TModelERPcontasfixas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontasfixas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontasfixas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

