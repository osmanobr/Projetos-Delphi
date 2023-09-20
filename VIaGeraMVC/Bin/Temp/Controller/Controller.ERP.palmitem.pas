
unit Controller.ERP.pagar_excluidos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpagarexcluidos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpagarexcluidos;
    FModelList: TModelBaseList<TModelERPpagarexcluidos>; 
    FModel: TModelERPpagarexcluidos;
    procedure SetModel(const Value: TModelERPpagarexcluidos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpagarexcluidos>);

  public 
    property Model : TModelERPpagarexcluidos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpagarexcluidos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpagarexcluidos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpagarexcluidos>.Create;  
  Self.FModelList.Add(TModelERPpagarexcluidos.Create); 
  Self.FModel           := TModelERPpagarexcluidos.Create; 
  Self.FDal             := TDalERPpagarexcluidos.Create( Param, True ); 
end; 

procedure TControllerERPpagarexcluidos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpagarexcluidos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpagarexcluidos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpagarexcluidos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpagarexcluidos.SetModel(  
  const Value: TModelERPpagarexcluidos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpagarexcluidos.SetModelList(  
  const Value: TModelBaseList<TModelERPpagarexcluidos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpagarexcluidos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpagarexcluidos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

