
unit Controller.ERP.compra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcompra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcompra;
    FModelList: TModelBaseList<TModelERPcompra>; 
    FModel: TModelERPcompra;
    procedure SetModel(const Value: TModelERPcompra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcompra>);

  public 
    property Model : TModelERPcompra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcompra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcompra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcompra>.Create;  
  Self.FModelList.Add(TModelERPcompra.Create); 
  Self.FModel           := TModelERPcompra.Create; 
  Self.FDal             := TDalERPcompra.Create( Param, True ); 
end; 

procedure TControllerERPcompra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcompra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcompra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcompra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcompra.SetModel(  
  const Value: TModelERPcompra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcompra.SetModelList(  
  const Value: TModelBaseList<TModelERPcompra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcompra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcompra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

