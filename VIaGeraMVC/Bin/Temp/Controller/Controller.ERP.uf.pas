
unit Controller.ERP.troca_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtrocaitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtrocaitem;
    FModelList: TModelBaseList<TModelERPtrocaitem>; 
    FModel: TModelERPtrocaitem;
    procedure SetModel(const Value: TModelERPtrocaitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtrocaitem>);

  public 
    property Model : TModelERPtrocaitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtrocaitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtrocaitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtrocaitem>.Create;  
  Self.FModelList.Add(TModelERPtrocaitem.Create); 
  Self.FModel           := TModelERPtrocaitem.Create; 
  Self.FDal             := TDalERPtrocaitem.Create( Param, True ); 
end; 

procedure TControllerERPtrocaitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtrocaitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtrocaitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtrocaitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtrocaitem.SetModel(  
  const Value: TModelERPtrocaitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtrocaitem.SetModelList(  
  const Value: TModelBaseList<TModelERPtrocaitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtrocaitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtrocaitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

