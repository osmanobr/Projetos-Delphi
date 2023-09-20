
unit Controller.ERP.cst_piscofins_natureza;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcstpiscofinsnatureza = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcstpiscofinsnatureza;
    FModelList: TModelBaseList<TModelERPcstpiscofinsnatureza>; 
    FModel: TModelERPcstpiscofinsnatureza;
    procedure SetModel(const Value: TModelERPcstpiscofinsnatureza); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcstpiscofinsnatureza>);

  public 
    property Model : TModelERPcstpiscofinsnatureza read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcstpiscofinsnatureza> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcstpiscofinsnatureza.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcstpiscofinsnatureza>.Create;  
  Self.FModelList.Add(TModelERPcstpiscofinsnatureza.Create); 
  Self.FModel           := TModelERPcstpiscofinsnatureza.Create; 
  Self.FDal             := TDalERPcstpiscofinsnatureza.Create( Param, True ); 
end; 

procedure TControllerERPcstpiscofinsnatureza.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcstpiscofinsnatureza.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcstpiscofinsnatureza.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcstpiscofinsnatureza.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcstpiscofinsnatureza.SetModel(  
  const Value: TModelERPcstpiscofinsnatureza); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcstpiscofinsnatureza.SetModelList(  
  const Value: TModelBaseList<TModelERPcstpiscofinsnatureza>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcstpiscofinsnatureza.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcstpiscofinsnatureza.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

