
unit Controller.ERP.posto_encerrante;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpostoencerrante = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpostoencerrante;
    FModelList: TModelBaseList<TModelERPpostoencerrante>; 
    FModel: TModelERPpostoencerrante;
    procedure SetModel(const Value: TModelERPpostoencerrante); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpostoencerrante>);

  public 
    property Model : TModelERPpostoencerrante read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpostoencerrante> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpostoencerrante.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpostoencerrante>.Create;  
  Self.FModelList.Add(TModelERPpostoencerrante.Create); 
  Self.FModel           := TModelERPpostoencerrante.Create; 
  Self.FDal             := TDalERPpostoencerrante.Create( Param, True ); 
end; 

procedure TControllerERPpostoencerrante.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpostoencerrante.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpostoencerrante.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpostoencerrante.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpostoencerrante.SetModel(  
  const Value: TModelERPpostoencerrante); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpostoencerrante.SetModelList(  
  const Value: TModelBaseList<TModelERPpostoencerrante>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpostoencerrante.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpostoencerrante.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

