
unit Controller.ERP.barras;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbarras = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbarras;
    FModelList: TModelBaseList<TModelERPbarras>; 
    FModel: TModelERPbarras;
    procedure SetModel(const Value: TModelERPbarras); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbarras>);

  public 
    property Model : TModelERPbarras read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbarras> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbarras.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbarras>.Create;  
  Self.FModelList.Add(TModelERPbarras.Create); 
  Self.FModel           := TModelERPbarras.Create; 
  Self.FDal             := TDalERPbarras.Create( Param, True ); 
end; 

procedure TControllerERPbarras.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbarras.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbarras.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbarras.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbarras.SetModel(  
  const Value: TModelERPbarras); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbarras.SetModelList(  
  const Value: TModelBaseList<TModelERPbarras>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbarras.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbarras.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

