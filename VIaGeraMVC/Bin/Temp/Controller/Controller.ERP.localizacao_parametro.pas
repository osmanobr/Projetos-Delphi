
unit Controller.ERP.locacao_troca_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaotrocaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaotrocaitem;
    FModelList: TModelBaseList<TModelERPlocacaotrocaitem>; 
    FModel: TModelERPlocacaotrocaitem;
    procedure SetModel(const Value: TModelERPlocacaotrocaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaotrocaitem>);

  public 
    property Model : TModelERPlocacaotrocaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaotrocaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaotrocaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaotrocaitem>.Create;  
  Self.FModelList.Add(TModelERPlocacaotrocaitem.Create); 
  Self.FModel           := TModelERPlocacaotrocaitem.Create; 
  Self.FDal             := TDalERPlocacaotrocaitem.Create( Param, True ); 
end; 

procedure TControllerERPlocacaotrocaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaotrocaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaotrocaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaotrocaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaotrocaitem.SetModel(  
  const Value: TModelERPlocacaotrocaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaotrocaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaotrocaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaotrocaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaotrocaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

