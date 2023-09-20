
unit Controller.ERP.cobrador;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcobrador = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcobrador;
    FModelList: TModelBaseList<TModelERPcobrador>; 
    FModel: TModelERPcobrador;
    procedure SetModel(const Value: TModelERPcobrador); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcobrador>);

  public 
    property Model : TModelERPcobrador read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcobrador> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcobrador.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcobrador>.Create;  
  Self.FModelList.Add(TModelERPcobrador.Create); 
  Self.FModel           := TModelERPcobrador.Create; 
  Self.FDal             := TDalERPcobrador.Create( Param, True ); 
end; 

procedure TControllerERPcobrador.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcobrador.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcobrador.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcobrador.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcobrador.SetModel(  
  const Value: TModelERPcobrador); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcobrador.SetModelList(  
  const Value: TModelBaseList<TModelERPcobrador>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcobrador.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcobrador.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

