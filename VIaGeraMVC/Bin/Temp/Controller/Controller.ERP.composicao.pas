
unit Controller.ERP.comissao_venda_servico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaovendaservico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaovendaservico;
    FModelList: TModelBaseList<TModelERPcomissaovendaservico>; 
    FModel: TModelERPcomissaovendaservico;
    procedure SetModel(const Value: TModelERPcomissaovendaservico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaovendaservico>);

  public 
    property Model : TModelERPcomissaovendaservico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaovendaservico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaovendaservico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaovendaservico>.Create;  
  Self.FModelList.Add(TModelERPcomissaovendaservico.Create); 
  Self.FModel           := TModelERPcomissaovendaservico.Create; 
  Self.FDal             := TDalERPcomissaovendaservico.Create( Param, True ); 
end; 

procedure TControllerERPcomissaovendaservico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaovendaservico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaovendaservico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaovendaservico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaovendaservico.SetModel(  
  const Value: TModelERPcomissaovendaservico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaovendaservico.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaovendaservico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaovendaservico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaovendaservico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

