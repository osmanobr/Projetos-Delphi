
unit Controller.ERP.localizacao_parametro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocalizacaoparametro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocalizacaoparametro;
    FModelList: TModelBaseList<TModelERPlocalizacaoparametro>; 
    FModel: TModelERPlocalizacaoparametro;
    procedure SetModel(const Value: TModelERPlocalizacaoparametro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocalizacaoparametro>);

  public 
    property Model : TModelERPlocalizacaoparametro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocalizacaoparametro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocalizacaoparametro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocalizacaoparametro>.Create;  
  Self.FModelList.Add(TModelERPlocalizacaoparametro.Create); 
  Self.FModel           := TModelERPlocalizacaoparametro.Create; 
  Self.FDal             := TDalERPlocalizacaoparametro.Create( Param, True ); 
end; 

procedure TControllerERPlocalizacaoparametro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocalizacaoparametro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocalizacaoparametro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocalizacaoparametro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocalizacaoparametro.SetModel(  
  const Value: TModelERPlocalizacaoparametro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocalizacaoparametro.SetModelList(  
  const Value: TModelBaseList<TModelERPlocalizacaoparametro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocalizacaoparametro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocalizacaoparametro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

