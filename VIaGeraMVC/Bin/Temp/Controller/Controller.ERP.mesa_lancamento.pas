
unit Controller.ERP.mesa_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesaitem;
    FModelList: TModelBaseList<TModelERPmesaitem>; 
    FModel: TModelERPmesaitem;
    procedure SetModel(const Value: TModelERPmesaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesaitem>);

  public 
    property Model : TModelERPmesaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesaitem>.Create;  
  Self.FModelList.Add(TModelERPmesaitem.Create); 
  Self.FModel           := TModelERPmesaitem.Create; 
  Self.FDal             := TDalERPmesaitem.Create( Param, True ); 
end; 

procedure TControllerERPmesaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesaitem.SetModel(  
  const Value: TModelERPmesaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPmesaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

