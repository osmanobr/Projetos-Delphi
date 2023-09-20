
unit Controller.ERP.compra_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcompraitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcompraitem;
    FModelList: TModelBaseList<TModelERPcompraitem>; 
    FModel: TModelERPcompraitem;
    procedure SetModel(const Value: TModelERPcompraitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcompraitem>);

  public 
    property Model : TModelERPcompraitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcompraitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcompraitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcompraitem>.Create;  
  Self.FModelList.Add(TModelERPcompraitem.Create); 
  Self.FModel           := TModelERPcompraitem.Create; 
  Self.FDal             := TDalERPcompraitem.Create( Param, True ); 
end; 

procedure TControllerERPcompraitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcompraitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcompraitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcompraitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcompraitem.SetModel(  
  const Value: TModelERPcompraitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcompraitem.SetModelList(  
  const Value: TModelBaseList<TModelERPcompraitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcompraitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcompraitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

