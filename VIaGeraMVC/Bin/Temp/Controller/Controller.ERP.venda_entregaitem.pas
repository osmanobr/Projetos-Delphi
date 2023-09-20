
unit Controller.ERP.venda_entrega_lote;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaentregalote = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaentregalote;
    FModelList: TModelBaseList<TModelERPvendaentregalote>; 
    FModel: TModelERPvendaentregalote;
    procedure SetModel(const Value: TModelERPvendaentregalote); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaentregalote>);

  public 
    property Model : TModelERPvendaentregalote read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaentregalote> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaentregalote.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaentregalote>.Create;  
  Self.FModelList.Add(TModelERPvendaentregalote.Create); 
  Self.FModel           := TModelERPvendaentregalote.Create; 
  Self.FDal             := TDalERPvendaentregalote.Create( Param, True ); 
end; 

procedure TControllerERPvendaentregalote.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaentregalote.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaentregalote.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaentregalote.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaentregalote.SetModel(  
  const Value: TModelERPvendaentregalote); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaentregalote.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaentregalote>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaentregalote.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaentregalote.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

