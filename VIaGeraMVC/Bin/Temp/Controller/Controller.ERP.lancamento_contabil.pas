
unit Controller.ERP.kit;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPkit = class(TControllerBase, IController) 
  private 
    FDal : TViewERPkit;
    FModelList: TModelBaseList<TModelERPkit>; 
    FModel: TModelERPkit;
    procedure SetModel(const Value: TModelERPkit); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPkit>);

  public 
    property Model : TModelERPkit read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPkit> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPkit.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPkit>.Create;  
  Self.FModelList.Add(TModelERPkit.Create); 
  Self.FModel           := TModelERPkit.Create; 
  Self.FDal             := TDalERPkit.Create( Param, True ); 
end; 

procedure TControllerERPkit.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPkit.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPkit.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPkit.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPkit.SetModel(  
  const Value: TModelERPkit); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPkit.SetModelList(  
  const Value: TModelBaseList<TModelERPkit>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPkit.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPkit.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

