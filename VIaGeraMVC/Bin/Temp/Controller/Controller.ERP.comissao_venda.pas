
unit Controller.ERP.comissao_os_servico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaoosservico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaoosservico;
    FModelList: TModelBaseList<TModelERPcomissaoosservico>; 
    FModel: TModelERPcomissaoosservico;
    procedure SetModel(const Value: TModelERPcomissaoosservico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaoosservico>);

  public 
    property Model : TModelERPcomissaoosservico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaoosservico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaoosservico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaoosservico>.Create;  
  Self.FModelList.Add(TModelERPcomissaoosservico.Create); 
  Self.FModel           := TModelERPcomissaoosservico.Create; 
  Self.FDal             := TDalERPcomissaoosservico.Create( Param, True ); 
end; 

procedure TControllerERPcomissaoosservico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaoosservico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaoosservico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaoosservico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaoosservico.SetModel(  
  const Value: TModelERPcomissaoosservico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaoosservico.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaoosservico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaoosservico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaoosservico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

