
unit Controller.ERP.empresas_compra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresascompra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresascompra;
    FModelList: TModelBaseList<TModelERPempresascompra>; 
    FModel: TModelERPempresascompra;
    procedure SetModel(const Value: TModelERPempresascompra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresascompra>);

  public 
    property Model : TModelERPempresascompra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresascompra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresascompra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresascompra>.Create;  
  Self.FModelList.Add(TModelERPempresascompra.Create); 
  Self.FModel           := TModelERPempresascompra.Create; 
  Self.FDal             := TDalERPempresascompra.Create( Param, True ); 
end; 

procedure TControllerERPempresascompra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresascompra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresascompra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresascompra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresascompra.SetModel(  
  const Value: TModelERPempresascompra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresascompra.SetModelList(  
  const Value: TModelBaseList<TModelERPempresascompra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresascompra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresascompra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

