
unit Controller.ERP.financeira;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfinanceira = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfinanceira;
    FModelList: TModelBaseList<TModelERPfinanceira>; 
    FModel: TModelERPfinanceira;
    procedure SetModel(const Value: TModelERPfinanceira); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfinanceira>);

  public 
    property Model : TModelERPfinanceira read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfinanceira> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfinanceira.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfinanceira>.Create;  
  Self.FModelList.Add(TModelERPfinanceira.Create); 
  Self.FModel           := TModelERPfinanceira.Create; 
  Self.FDal             := TDalERPfinanceira.Create( Param, True ); 
end; 

procedure TControllerERPfinanceira.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfinanceira.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfinanceira.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfinanceira.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfinanceira.SetModel(  
  const Value: TModelERPfinanceira); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfinanceira.SetModelList(  
  const Value: TModelBaseList<TModelERPfinanceira>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfinanceira.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfinanceira.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

