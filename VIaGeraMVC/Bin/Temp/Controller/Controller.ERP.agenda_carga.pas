
unit Controller.ERP.advertencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPadvertencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPadvertencia;
    FModelList: TModelBaseList<TModelERPadvertencia>; 
    FModel: TModelERPadvertencia;
    procedure SetModel(const Value: TModelERPadvertencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPadvertencia>);

  public 
    property Model : TModelERPadvertencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPadvertencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPadvertencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPadvertencia>.Create;  
  Self.FModelList.Add(TModelERPadvertencia.Create); 
  Self.FModel           := TModelERPadvertencia.Create; 
  Self.FDal             := TDalERPadvertencia.Create( Param, True ); 
end; 

procedure TControllerERPadvertencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPadvertencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPadvertencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPadvertencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPadvertencia.SetModel(  
  const Value: TModelERPadvertencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPadvertencia.SetModelList(  
  const Value: TModelBaseList<TModelERPadvertencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPadvertencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPadvertencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

