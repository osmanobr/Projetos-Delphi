
unit Controller.ERP.cesta_fabricacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcestafabricacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcestafabricacao;
    FModelList: TModelBaseList<TModelERPcestafabricacao>; 
    FModel: TModelERPcestafabricacao;
    procedure SetModel(const Value: TModelERPcestafabricacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcestafabricacao>);

  public 
    property Model : TModelERPcestafabricacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcestafabricacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcestafabricacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcestafabricacao>.Create;  
  Self.FModelList.Add(TModelERPcestafabricacao.Create); 
  Self.FModel           := TModelERPcestafabricacao.Create; 
  Self.FDal             := TDalERPcestafabricacao.Create( Param, True ); 
end; 

procedure TControllerERPcestafabricacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcestafabricacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcestafabricacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcestafabricacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcestafabricacao.SetModel(  
  const Value: TModelERPcestafabricacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcestafabricacao.SetModelList(  
  const Value: TModelBaseList<TModelERPcestafabricacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcestafabricacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcestafabricacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

