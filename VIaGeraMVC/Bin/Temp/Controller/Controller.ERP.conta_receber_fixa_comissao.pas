
unit Controller.ERP.conta_receber_fixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberfixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberfixa;
    FModelList: TModelBaseList<TModelERPcontareceberfixa>; 
    FModel: TModelERPcontareceberfixa;
    procedure SetModel(const Value: TModelERPcontareceberfixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberfixa>);

  public 
    property Model : TModelERPcontareceberfixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberfixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberfixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberfixa>.Create;  
  Self.FModelList.Add(TModelERPcontareceberfixa.Create); 
  Self.FModel           := TModelERPcontareceberfixa.Create; 
  Self.FDal             := TDalERPcontareceberfixa.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberfixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberfixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberfixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberfixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberfixa.SetModel(  
  const Value: TModelERPcontareceberfixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberfixa.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberfixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberfixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberfixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

