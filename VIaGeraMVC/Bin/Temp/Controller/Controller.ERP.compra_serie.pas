
unit Controller.ERP.compra_kit;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomprakit = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomprakit;
    FModelList: TModelBaseList<TModelERPcomprakit>; 
    FModel: TModelERPcomprakit;
    procedure SetModel(const Value: TModelERPcomprakit); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomprakit>);

  public 
    property Model : TModelERPcomprakit read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomprakit> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomprakit.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomprakit>.Create;  
  Self.FModelList.Add(TModelERPcomprakit.Create); 
  Self.FModel           := TModelERPcomprakit.Create; 
  Self.FDal             := TDalERPcomprakit.Create( Param, True ); 
end; 

procedure TControllerERPcomprakit.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomprakit.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomprakit.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomprakit.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomprakit.SetModel(  
  const Value: TModelERPcomprakit); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomprakit.SetModelList(  
  const Value: TModelBaseList<TModelERPcomprakit>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomprakit.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomprakit.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

