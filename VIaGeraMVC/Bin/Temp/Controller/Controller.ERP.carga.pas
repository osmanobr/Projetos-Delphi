
unit Controller.ERP.calculo_financeiro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcalculofinanceiro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcalculofinanceiro;
    FModelList: TModelBaseList<TModelERPcalculofinanceiro>; 
    FModel: TModelERPcalculofinanceiro;
    procedure SetModel(const Value: TModelERPcalculofinanceiro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcalculofinanceiro>);

  public 
    property Model : TModelERPcalculofinanceiro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcalculofinanceiro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcalculofinanceiro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcalculofinanceiro>.Create;  
  Self.FModelList.Add(TModelERPcalculofinanceiro.Create); 
  Self.FModel           := TModelERPcalculofinanceiro.Create; 
  Self.FDal             := TDalERPcalculofinanceiro.Create( Param, True ); 
end; 

procedure TControllerERPcalculofinanceiro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcalculofinanceiro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcalculofinanceiro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcalculofinanceiro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcalculofinanceiro.SetModel(  
  const Value: TModelERPcalculofinanceiro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcalculofinanceiro.SetModelList(  
  const Value: TModelBaseList<TModelERPcalculofinanceiro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcalculofinanceiro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcalculofinanceiro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

