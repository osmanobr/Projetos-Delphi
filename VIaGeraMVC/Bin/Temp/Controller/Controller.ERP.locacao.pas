
unit Controller.ERP.lmc_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlmcitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlmcitem;
    FModelList: TModelBaseList<TModelERPlmcitem>; 
    FModel: TModelERPlmcitem;
    procedure SetModel(const Value: TModelERPlmcitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlmcitem>);

  public 
    property Model : TModelERPlmcitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlmcitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlmcitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlmcitem>.Create;  
  Self.FModelList.Add(TModelERPlmcitem.Create); 
  Self.FModel           := TModelERPlmcitem.Create; 
  Self.FDal             := TDalERPlmcitem.Create( Param, True ); 
end; 

procedure TControllerERPlmcitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlmcitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlmcitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlmcitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlmcitem.SetModel(  
  const Value: TModelERPlmcitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlmcitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlmcitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlmcitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlmcitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

