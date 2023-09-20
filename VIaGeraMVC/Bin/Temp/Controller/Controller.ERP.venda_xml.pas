
unit Controller.ERP.venda_uniao_itens;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendauniaoitens = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendauniaoitens;
    FModelList: TModelBaseList<TModelERPvendauniaoitens>; 
    FModel: TModelERPvendauniaoitens;
    procedure SetModel(const Value: TModelERPvendauniaoitens); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendauniaoitens>);

  public 
    property Model : TModelERPvendauniaoitens read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendauniaoitens> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendauniaoitens.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendauniaoitens>.Create;  
  Self.FModelList.Add(TModelERPvendauniaoitens.Create); 
  Self.FModel           := TModelERPvendauniaoitens.Create; 
  Self.FDal             := TDalERPvendauniaoitens.Create( Param, True ); 
end; 

procedure TControllerERPvendauniaoitens.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendauniaoitens.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendauniaoitens.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendauniaoitens.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendauniaoitens.SetModel(  
  const Value: TModelERPvendauniaoitens); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendauniaoitens.SetModelList(  
  const Value: TModelBaseList<TModelERPvendauniaoitens>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendauniaoitens.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendauniaoitens.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

