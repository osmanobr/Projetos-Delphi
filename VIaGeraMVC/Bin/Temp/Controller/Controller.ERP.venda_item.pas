
unit Controller.ERP.venda_entregaitem;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaentregaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaentregaitem;
    FModelList: TModelBaseList<TModelERPvendaentregaitem>; 
    FModel: TModelERPvendaentregaitem;
    procedure SetModel(const Value: TModelERPvendaentregaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaentregaitem>);

  public 
    property Model : TModelERPvendaentregaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaentregaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaentregaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaentregaitem>.Create;  
  Self.FModelList.Add(TModelERPvendaentregaitem.Create); 
  Self.FModel           := TModelERPvendaentregaitem.Create; 
  Self.FDal             := TDalERPvendaentregaitem.Create( Param, True ); 
end; 

procedure TControllerERPvendaentregaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaentregaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaentregaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaentregaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaentregaitem.SetModel(  
  const Value: TModelERPvendaentregaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaentregaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaentregaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaentregaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaentregaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

