
unit Controller.ERP.acerto_insumo_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacertoinsumoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacertoinsumoitem;
    FModelList: TModelBaseList<TModelERPacertoinsumoitem>; 
    FModel: TModelERPacertoinsumoitem;
    procedure SetModel(const Value: TModelERPacertoinsumoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacertoinsumoitem>);

  public 
    property Model : TModelERPacertoinsumoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacertoinsumoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacertoinsumoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacertoinsumoitem>.Create;  
  Self.FModelList.Add(TModelERPacertoinsumoitem.Create); 
  Self.FModel           := TModelERPacertoinsumoitem.Create; 
  Self.FDal             := TDalERPacertoinsumoitem.Create( Param, True ); 
end; 

procedure TControllerERPacertoinsumoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacertoinsumoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacertoinsumoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacertoinsumoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacertoinsumoitem.SetModel(  
  const Value: TModelERPacertoinsumoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacertoinsumoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPacertoinsumoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacertoinsumoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacertoinsumoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

