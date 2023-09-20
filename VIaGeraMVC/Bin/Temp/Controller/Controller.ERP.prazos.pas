
unit Controller.ERP.posto_lancamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpostolancamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpostolancamento;
    FModelList: TModelBaseList<TModelERPpostolancamento>; 
    FModel: TModelERPpostolancamento;
    procedure SetModel(const Value: TModelERPpostolancamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpostolancamento>);

  public 
    property Model : TModelERPpostolancamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpostolancamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpostolancamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpostolancamento>.Create;  
  Self.FModelList.Add(TModelERPpostolancamento.Create); 
  Self.FModel           := TModelERPpostolancamento.Create; 
  Self.FDal             := TDalERPpostolancamento.Create( Param, True ); 
end; 

procedure TControllerERPpostolancamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpostolancamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpostolancamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpostolancamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpostolancamento.SetModel(  
  const Value: TModelERPpostolancamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpostolancamento.SetModelList(  
  const Value: TModelBaseList<TModelERPpostolancamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpostolancamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpostolancamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

