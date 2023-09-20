
unit Controller.ERP.controle_entrega_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontroleentregaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontroleentregaitem;
    FModelList: TModelBaseList<TModelERPcontroleentregaitem>; 
    FModel: TModelERPcontroleentregaitem;
    procedure SetModel(const Value: TModelERPcontroleentregaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontroleentregaitem>);

  public 
    property Model : TModelERPcontroleentregaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontroleentregaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontroleentregaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontroleentregaitem>.Create;  
  Self.FModelList.Add(TModelERPcontroleentregaitem.Create); 
  Self.FModel           := TModelERPcontroleentregaitem.Create; 
  Self.FDal             := TDalERPcontroleentregaitem.Create( Param, True ); 
end; 

procedure TControllerERPcontroleentregaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontroleentregaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontroleentregaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontroleentregaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontroleentregaitem.SetModel(  
  const Value: TModelERPcontroleentregaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontroleentregaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPcontroleentregaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontroleentregaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontroleentregaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

