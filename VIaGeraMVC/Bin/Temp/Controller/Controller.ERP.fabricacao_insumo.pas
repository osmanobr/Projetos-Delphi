
unit Controller.ERP.fabricacao_funcionario;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfabricacaofuncionario = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfabricacaofuncionario;
    FModelList: TModelBaseList<TModelERPfabricacaofuncionario>; 
    FModel: TModelERPfabricacaofuncionario;
    procedure SetModel(const Value: TModelERPfabricacaofuncionario); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfabricacaofuncionario>);

  public 
    property Model : TModelERPfabricacaofuncionario read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfabricacaofuncionario> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfabricacaofuncionario.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfabricacaofuncionario>.Create;  
  Self.FModelList.Add(TModelERPfabricacaofuncionario.Create); 
  Self.FModel           := TModelERPfabricacaofuncionario.Create; 
  Self.FDal             := TDalERPfabricacaofuncionario.Create( Param, True ); 
end; 

procedure TControllerERPfabricacaofuncionario.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfabricacaofuncionario.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfabricacaofuncionario.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfabricacaofuncionario.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfabricacaofuncionario.SetModel(  
  const Value: TModelERPfabricacaofuncionario); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfabricacaofuncionario.SetModelList(  
  const Value: TModelBaseList<TModelERPfabricacaofuncionario>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfabricacaofuncionario.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfabricacaofuncionario.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

