
unit Controller.ERP.transf_deposito_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtransfdepositoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtransfdepositoitem;
    FModelList: TModelBaseList<TModelERPtransfdepositoitem>; 
    FModel: TModelERPtransfdepositoitem;
    procedure SetModel(const Value: TModelERPtransfdepositoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtransfdepositoitem>);

  public 
    property Model : TModelERPtransfdepositoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtransfdepositoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtransfdepositoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtransfdepositoitem>.Create;  
  Self.FModelList.Add(TModelERPtransfdepositoitem.Create); 
  Self.FModel           := TModelERPtransfdepositoitem.Create; 
  Self.FDal             := TDalERPtransfdepositoitem.Create( Param, True ); 
end; 

procedure TControllerERPtransfdepositoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtransfdepositoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtransfdepositoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtransfdepositoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtransfdepositoitem.SetModel(  
  const Value: TModelERPtransfdepositoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtransfdepositoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPtransfdepositoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtransfdepositoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtransfdepositoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

