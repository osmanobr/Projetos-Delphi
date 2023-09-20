
unit Controller.ERP.contacorrente;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontacorrente = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontacorrente;
    FModelList: TModelBaseList<TModelERPcontacorrente>; 
    FModel: TModelERPcontacorrente;
    procedure SetModel(const Value: TModelERPcontacorrente); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontacorrente>);

  public 
    property Model : TModelERPcontacorrente read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontacorrente> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontacorrente.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontacorrente>.Create;  
  Self.FModelList.Add(TModelERPcontacorrente.Create); 
  Self.FModel           := TModelERPcontacorrente.Create; 
  Self.FDal             := TDalERPcontacorrente.Create( Param, True ); 
end; 

procedure TControllerERPcontacorrente.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontacorrente.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontacorrente.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontacorrente.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontacorrente.SetModel(  
  const Value: TModelERPcontacorrente); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontacorrente.SetModelList(  
  const Value: TModelBaseList<TModelERPcontacorrente>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontacorrente.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontacorrente.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

