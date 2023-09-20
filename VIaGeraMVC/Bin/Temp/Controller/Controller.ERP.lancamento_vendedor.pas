
unit Controller.ERP.lancamento_contabil;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlancamentocontabil = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlancamentocontabil;
    FModelList: TModelBaseList<TModelERPlancamentocontabil>; 
    FModel: TModelERPlancamentocontabil;
    procedure SetModel(const Value: TModelERPlancamentocontabil); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlancamentocontabil>);

  public 
    property Model : TModelERPlancamentocontabil read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlancamentocontabil> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlancamentocontabil.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlancamentocontabil>.Create;  
  Self.FModelList.Add(TModelERPlancamentocontabil.Create); 
  Self.FModel           := TModelERPlancamentocontabil.Create; 
  Self.FDal             := TDalERPlancamentocontabil.Create( Param, True ); 
end; 

procedure TControllerERPlancamentocontabil.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlancamentocontabil.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlancamentocontabil.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlancamentocontabil.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlancamentocontabil.SetModel(  
  const Value: TModelERPlancamentocontabil); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlancamentocontabil.SetModelList(  
  const Value: TModelBaseList<TModelERPlancamentocontabil>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlancamentocontabil.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlancamentocontabil.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

