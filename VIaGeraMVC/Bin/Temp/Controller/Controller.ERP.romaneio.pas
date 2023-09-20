
unit Controller.ERP.representante;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPrepresentante = class(TControllerBase, IController) 
  private 
    FDal : TViewERPrepresentante;
    FModelList: TModelBaseList<TModelERPrepresentante>; 
    FModel: TModelERPrepresentante;
    procedure SetModel(const Value: TModelERPrepresentante); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPrepresentante>);

  public 
    property Model : TModelERPrepresentante read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPrepresentante> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPrepresentante.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPrepresentante>.Create;  
  Self.FModelList.Add(TModelERPrepresentante.Create); 
  Self.FModel           := TModelERPrepresentante.Create; 
  Self.FDal             := TDalERPrepresentante.Create( Param, True ); 
end; 

procedure TControllerERPrepresentante.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPrepresentante.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPrepresentante.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPrepresentante.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPrepresentante.SetModel(  
  const Value: TModelERPrepresentante); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPrepresentante.SetModelList(  
  const Value: TModelBaseList<TModelERPrepresentante>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPrepresentante.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPrepresentante.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

