
unit Controller.ERP.controle_nfce;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrolenfce = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrolenfce;
    FModelList: TModelBaseList<TModelERPcontrolenfce>; 
    FModel: TModelERPcontrolenfce;
    procedure SetModel(const Value: TModelERPcontrolenfce); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrolenfce>);

  public 
    property Model : TModelERPcontrolenfce read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrolenfce> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrolenfce.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrolenfce>.Create;  
  Self.FModelList.Add(TModelERPcontrolenfce.Create); 
  Self.FModel           := TModelERPcontrolenfce.Create; 
  Self.FDal             := TDalERPcontrolenfce.Create( Param, True ); 
end; 

procedure TControllerERPcontrolenfce.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrolenfce.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrolenfce.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrolenfce.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrolenfce.SetModel(  
  const Value: TModelERPcontrolenfce); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrolenfce.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrolenfce>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrolenfce.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrolenfce.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

