
unit Controller.ERP.posto_caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpostocaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpostocaixa;
    FModelList: TModelBaseList<TModelERPpostocaixa>; 
    FModel: TModelERPpostocaixa;
    procedure SetModel(const Value: TModelERPpostocaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpostocaixa>);

  public 
    property Model : TModelERPpostocaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpostocaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpostocaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpostocaixa>.Create;  
  Self.FModelList.Add(TModelERPpostocaixa.Create); 
  Self.FModel           := TModelERPpostocaixa.Create; 
  Self.FDal             := TDalERPpostocaixa.Create( Param, True ); 
end; 

procedure TControllerERPpostocaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpostocaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpostocaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpostocaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpostocaixa.SetModel(  
  const Value: TModelERPpostocaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpostocaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPpostocaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpostocaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpostocaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

