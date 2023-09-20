
unit Controller.ERP.fechamento_caixa_manutencao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfechamentocaixamanutencao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfechamentocaixamanutencao;
    FModelList: TModelBaseList<TModelERPfechamentocaixamanutencao>; 
    FModel: TModelERPfechamentocaixamanutencao;
    procedure SetModel(const Value: TModelERPfechamentocaixamanutencao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfechamentocaixamanutencao>);

  public 
    property Model : TModelERPfechamentocaixamanutencao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfechamentocaixamanutencao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfechamentocaixamanutencao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfechamentocaixamanutencao>.Create;  
  Self.FModelList.Add(TModelERPfechamentocaixamanutencao.Create); 
  Self.FModel           := TModelERPfechamentocaixamanutencao.Create; 
  Self.FDal             := TDalERPfechamentocaixamanutencao.Create( Param, True ); 
end; 

procedure TControllerERPfechamentocaixamanutencao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfechamentocaixamanutencao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfechamentocaixamanutencao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfechamentocaixamanutencao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfechamentocaixamanutencao.SetModel(  
  const Value: TModelERPfechamentocaixamanutencao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfechamentocaixamanutencao.SetModelList(  
  const Value: TModelBaseList<TModelERPfechamentocaixamanutencao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfechamentocaixamanutencao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfechamentocaixamanutencao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

