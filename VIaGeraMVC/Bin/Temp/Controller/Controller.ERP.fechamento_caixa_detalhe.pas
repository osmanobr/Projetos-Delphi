
unit Controller.ERP.fechamento_caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfechamentocaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfechamentocaixa;
    FModelList: TModelBaseList<TModelERPfechamentocaixa>; 
    FModel: TModelERPfechamentocaixa;
    procedure SetModel(const Value: TModelERPfechamentocaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfechamentocaixa>);

  public 
    property Model : TModelERPfechamentocaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfechamentocaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfechamentocaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfechamentocaixa>.Create;  
  Self.FModelList.Add(TModelERPfechamentocaixa.Create); 
  Self.FModel           := TModelERPfechamentocaixa.Create; 
  Self.FDal             := TDalERPfechamentocaixa.Create( Param, True ); 
end; 

procedure TControllerERPfechamentocaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfechamentocaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfechamentocaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfechamentocaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfechamentocaixa.SetModel(  
  const Value: TModelERPfechamentocaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfechamentocaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPfechamentocaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfechamentocaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfechamentocaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

