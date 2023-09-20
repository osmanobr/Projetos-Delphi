
unit Controller.ERP.caixa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcaixa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcaixa;
    FModelList: TModelBaseList<TModelERPcaixa>; 
    FModel: TModelERPcaixa;
    procedure SetModel(const Value: TModelERPcaixa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcaixa>);

  public 
    property Model : TModelERPcaixa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcaixa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcaixa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcaixa>.Create;  
  Self.FModelList.Add(TModelERPcaixa.Create); 
  Self.FModel           := TModelERPcaixa.Create; 
  Self.FDal             := TDalERPcaixa.Create( Param, True ); 
end; 

procedure TControllerERPcaixa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcaixa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcaixa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcaixa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcaixa.SetModel(  
  const Value: TModelERPcaixa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcaixa.SetModelList(  
  const Value: TModelBaseList<TModelERPcaixa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcaixa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcaixa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

