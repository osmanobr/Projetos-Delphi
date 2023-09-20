
unit Controller.ERP.fechamento_caixa_detalhe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfechamentocaixadetalhe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfechamentocaixadetalhe;
    FModelList: TModelBaseList<TModelERPfechamentocaixadetalhe>; 
    FModel: TModelERPfechamentocaixadetalhe;
    procedure SetModel(const Value: TModelERPfechamentocaixadetalhe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfechamentocaixadetalhe>);

  public 
    property Model : TModelERPfechamentocaixadetalhe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfechamentocaixadetalhe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfechamentocaixadetalhe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfechamentocaixadetalhe>.Create;  
  Self.FModelList.Add(TModelERPfechamentocaixadetalhe.Create); 
  Self.FModel           := TModelERPfechamentocaixadetalhe.Create; 
  Self.FDal             := TDalERPfechamentocaixadetalhe.Create( Param, True ); 
end; 

procedure TControllerERPfechamentocaixadetalhe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfechamentocaixadetalhe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfechamentocaixadetalhe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfechamentocaixadetalhe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfechamentocaixadetalhe.SetModel(  
  const Value: TModelERPfechamentocaixadetalhe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfechamentocaixadetalhe.SetModelList(  
  const Value: TModelBaseList<TModelERPfechamentocaixadetalhe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfechamentocaixadetalhe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfechamentocaixadetalhe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

