
unit Controller.ERP.mesa_caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesacaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesacaixa;
    FModelList: TModelBaseList<TModelERPmesacaixa>; 
    FModel: TModelERPmesacaixa;
    procedure SetModel(const Value: TModelERPmesacaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesacaixa>);

  public 
    property Model : TModelERPmesacaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesacaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesacaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesacaixa>.Create;  
  Self.FModelList.Add(TModelERPmesacaixa.Create); 
  Self.FModel           := TModelERPmesacaixa.Create; 
  Self.FDal             := TDalERPmesacaixa.Create( Param, True ); 
end; 

procedure TControllerERPmesacaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesacaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesacaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesacaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesacaixa.SetModel(  
  const Value: TModelERPmesacaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesacaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPmesacaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesacaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesacaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

