
unit Controller.ERP.banco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbanco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbanco;
    FModelList: TModelBaseList<TModelERPbanco>; 
    FModel: TModelERPbanco;
    procedure SetModel(const Value: TModelERPbanco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbanco>);

  public 
    property Model : TModelERPbanco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbanco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbanco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbanco>.Create;  
  Self.FModelList.Add(TModelERPbanco.Create); 
  Self.FModel           := TModelERPbanco.Create; 
  Self.FDal             := TDalERPbanco.Create( Param, True ); 
end; 

procedure TControllerERPbanco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbanco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbanco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbanco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbanco.SetModel(  
  const Value: TModelERPbanco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbanco.SetModelList(  
  const Value: TModelBaseList<TModelERPbanco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbanco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbanco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

