
unit Controller.ERP.conta_pagar_parceiros;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontapagarparceiros = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontapagarparceiros;
    FModelList: TModelBaseList<TModelERPcontapagarparceiros>; 
    FModel: TModelERPcontapagarparceiros;
    procedure SetModel(const Value: TModelERPcontapagarparceiros); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontapagarparceiros>);

  public 
    property Model : TModelERPcontapagarparceiros read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontapagarparceiros> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontapagarparceiros.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontapagarparceiros>.Create;  
  Self.FModelList.Add(TModelERPcontapagarparceiros.Create); 
  Self.FModel           := TModelERPcontapagarparceiros.Create; 
  Self.FDal             := TDalERPcontapagarparceiros.Create( Param, True ); 
end; 

procedure TControllerERPcontapagarparceiros.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontapagarparceiros.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontapagarparceiros.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontapagarparceiros.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontapagarparceiros.SetModel(  
  const Value: TModelERPcontapagarparceiros); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontapagarparceiros.SetModelList(  
  const Value: TModelBaseList<TModelERPcontapagarparceiros>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontapagarparceiros.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontapagarparceiros.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

