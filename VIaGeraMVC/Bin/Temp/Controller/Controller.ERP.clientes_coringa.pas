
unit Controller.ERP.clientes_controle_proprio_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientescontroleproprioitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientescontroleproprioitem;
    FModelList: TModelBaseList<TModelERPclientescontroleproprioitem>; 
    FModel: TModelERPclientescontroleproprioitem;
    procedure SetModel(const Value: TModelERPclientescontroleproprioitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientescontroleproprioitem>);

  public 
    property Model : TModelERPclientescontroleproprioitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientescontroleproprioitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientescontroleproprioitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientescontroleproprioitem>.Create;  
  Self.FModelList.Add(TModelERPclientescontroleproprioitem.Create); 
  Self.FModel           := TModelERPclientescontroleproprioitem.Create; 
  Self.FDal             := TDalERPclientescontroleproprioitem.Create( Param, True ); 
end; 

procedure TControllerERPclientescontroleproprioitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientescontroleproprioitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientescontroleproprioitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientescontroleproprioitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientescontroleproprioitem.SetModel(  
  const Value: TModelERPclientescontroleproprioitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientescontroleproprioitem.SetModelList(  
  const Value: TModelBaseList<TModelERPclientescontroleproprioitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientescontroleproprioitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientescontroleproprioitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

