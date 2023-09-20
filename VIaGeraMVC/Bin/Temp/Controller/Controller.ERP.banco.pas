
unit Controller.ERP.balanco_uniao_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbalancouniaoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbalancouniaoitem;
    FModelList: TModelBaseList<TModelERPbalancouniaoitem>; 
    FModel: TModelERPbalancouniaoitem;
    procedure SetModel(const Value: TModelERPbalancouniaoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbalancouniaoitem>);

  public 
    property Model : TModelERPbalancouniaoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbalancouniaoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbalancouniaoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbalancouniaoitem>.Create;  
  Self.FModelList.Add(TModelERPbalancouniaoitem.Create); 
  Self.FModel           := TModelERPbalancouniaoitem.Create; 
  Self.FDal             := TDalERPbalancouniaoitem.Create( Param, True ); 
end; 

procedure TControllerERPbalancouniaoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbalancouniaoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbalancouniaoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbalancouniaoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbalancouniaoitem.SetModel(  
  const Value: TModelERPbalancouniaoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbalancouniaoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPbalancouniaoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbalancouniaoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbalancouniaoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

