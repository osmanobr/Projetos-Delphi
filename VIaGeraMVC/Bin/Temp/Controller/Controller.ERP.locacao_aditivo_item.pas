
unit Controller.ERP.locacao_aditivo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaoaditivo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaoaditivo;
    FModelList: TModelBaseList<TModelERPlocacaoaditivo>; 
    FModel: TModelERPlocacaoaditivo;
    procedure SetModel(const Value: TModelERPlocacaoaditivo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaoaditivo>);

  public 
    property Model : TModelERPlocacaoaditivo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaoaditivo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaoaditivo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaoaditivo>.Create;  
  Self.FModelList.Add(TModelERPlocacaoaditivo.Create); 
  Self.FModel           := TModelERPlocacaoaditivo.Create; 
  Self.FDal             := TDalERPlocacaoaditivo.Create( Param, True ); 
end; 

procedure TControllerERPlocacaoaditivo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaoaditivo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaoaditivo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaoaditivo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaoaditivo.SetModel(  
  const Value: TModelERPlocacaoaditivo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaoaditivo.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaoaditivo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaoaditivo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaoaditivo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

