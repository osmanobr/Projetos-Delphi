
unit Controller.ERP.movimento_caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentocaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentocaixa;
    FModelList: TModelBaseList<TModelERPmovimentocaixa>; 
    FModel: TModelERPmovimentocaixa;
    procedure SetModel(const Value: TModelERPmovimentocaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentocaixa>);

  public 
    property Model : TModelERPmovimentocaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentocaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentocaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentocaixa>.Create;  
  Self.FModelList.Add(TModelERPmovimentocaixa.Create); 
  Self.FModel           := TModelERPmovimentocaixa.Create; 
  Self.FDal             := TDalERPmovimentocaixa.Create( Param, True ); 
end; 

procedure TControllerERPmovimentocaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentocaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentocaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentocaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentocaixa.SetModel(  
  const Value: TModelERPmovimentocaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentocaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentocaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentocaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentocaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

