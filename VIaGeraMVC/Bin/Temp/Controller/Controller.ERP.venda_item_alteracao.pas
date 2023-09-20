
unit Controller.ERP.venda_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaitem;
    FModelList: TModelBaseList<TModelERPvendaitem>; 
    FModel: TModelERPvendaitem;
    procedure SetModel(const Value: TModelERPvendaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaitem>);

  public 
    property Model : TModelERPvendaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaitem>.Create;  
  Self.FModelList.Add(TModelERPvendaitem.Create); 
  Self.FModel           := TModelERPvendaitem.Create; 
  Self.FDal             := TDalERPvendaitem.Create( Param, True ); 
end; 

procedure TControllerERPvendaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaitem.SetModel(  
  const Value: TModelERPvendaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

