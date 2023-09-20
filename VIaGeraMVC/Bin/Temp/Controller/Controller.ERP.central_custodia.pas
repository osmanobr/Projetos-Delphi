
unit Controller.ERP.cartao_tef;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcartaotef = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcartaotef;
    FModelList: TModelBaseList<TModelERPcartaotef>; 
    FModel: TModelERPcartaotef;
    procedure SetModel(const Value: TModelERPcartaotef); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcartaotef>);

  public 
    property Model : TModelERPcartaotef read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcartaotef> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcartaotef.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcartaotef>.Create;  
  Self.FModelList.Add(TModelERPcartaotef.Create); 
  Self.FModel           := TModelERPcartaotef.Create; 
  Self.FDal             := TDalERPcartaotef.Create( Param, True ); 
end; 

procedure TControllerERPcartaotef.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcartaotef.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcartaotef.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcartaotef.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcartaotef.SetModel(  
  const Value: TModelERPcartaotef); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcartaotef.SetModelList(  
  const Value: TModelBaseList<TModelERPcartaotef>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcartaotef.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcartaotef.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

