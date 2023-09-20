
unit Controller.ERP.clientes_fotos_dependentes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesfotosdependentes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesfotosdependentes;
    FModelList: TModelBaseList<TModelERPclientesfotosdependentes>; 
    FModel: TModelERPclientesfotosdependentes;
    procedure SetModel(const Value: TModelERPclientesfotosdependentes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesfotosdependentes>);

  public 
    property Model : TModelERPclientesfotosdependentes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesfotosdependentes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesfotosdependentes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesfotosdependentes>.Create;  
  Self.FModelList.Add(TModelERPclientesfotosdependentes.Create); 
  Self.FModel           := TModelERPclientesfotosdependentes.Create; 
  Self.FDal             := TDalERPclientesfotosdependentes.Create( Param, True ); 
end; 

procedure TControllerERPclientesfotosdependentes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesfotosdependentes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesfotosdependentes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesfotosdependentes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesfotosdependentes.SetModel(  
  const Value: TModelERPclientesfotosdependentes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesfotosdependentes.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesfotosdependentes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesfotosdependentes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesfotosdependentes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

