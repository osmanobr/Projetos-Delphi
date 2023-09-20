
unit Controller.ERP.controle_validade;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrolevalidade = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrolevalidade;
    FModelList: TModelBaseList<TModelERPcontrolevalidade>; 
    FModel: TModelERPcontrolevalidade;
    procedure SetModel(const Value: TModelERPcontrolevalidade); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrolevalidade>);

  public 
    property Model : TModelERPcontrolevalidade read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrolevalidade> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrolevalidade.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrolevalidade>.Create;  
  Self.FModelList.Add(TModelERPcontrolevalidade.Create); 
  Self.FModel           := TModelERPcontrolevalidade.Create; 
  Self.FDal             := TDalERPcontrolevalidade.Create( Param, True ); 
end; 

procedure TControllerERPcontrolevalidade.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrolevalidade.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrolevalidade.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrolevalidade.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrolevalidade.SetModel(  
  const Value: TModelERPcontrolevalidade); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrolevalidade.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrolevalidade>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrolevalidade.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrolevalidade.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

