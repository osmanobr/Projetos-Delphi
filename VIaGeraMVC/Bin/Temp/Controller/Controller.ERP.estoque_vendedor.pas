
unit Controller.ERP.estoque_terceiro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoqueterceiro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoqueterceiro;
    FModelList: TModelBaseList<TModelERPestoqueterceiro>; 
    FModel: TModelERPestoqueterceiro;
    procedure SetModel(const Value: TModelERPestoqueterceiro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoqueterceiro>);

  public 
    property Model : TModelERPestoqueterceiro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoqueterceiro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoqueterceiro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoqueterceiro>.Create;  
  Self.FModelList.Add(TModelERPestoqueterceiro.Create); 
  Self.FModel           := TModelERPestoqueterceiro.Create; 
  Self.FDal             := TDalERPestoqueterceiro.Create( Param, True ); 
end; 

procedure TControllerERPestoqueterceiro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoqueterceiro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoqueterceiro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoqueterceiro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoqueterceiro.SetModel(  
  const Value: TModelERPestoqueterceiro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoqueterceiro.SetModelList(  
  const Value: TModelBaseList<TModelERPestoqueterceiro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoqueterceiro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoqueterceiro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

