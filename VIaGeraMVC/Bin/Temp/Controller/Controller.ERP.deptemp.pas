
unit Controller.ERP.dependentes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdependentes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdependentes;
    FModelList: TModelBaseList<TModelERPdependentes>; 
    FModel: TModelERPdependentes;
    procedure SetModel(const Value: TModelERPdependentes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdependentes>);

  public 
    property Model : TModelERPdependentes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdependentes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdependentes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdependentes>.Create;  
  Self.FModelList.Add(TModelERPdependentes.Create); 
  Self.FModel           := TModelERPdependentes.Create; 
  Self.FDal             := TDalERPdependentes.Create( Param, True ); 
end; 

procedure TControllerERPdependentes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdependentes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdependentes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdependentes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdependentes.SetModel(  
  const Value: TModelERPdependentes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdependentes.SetModelList(  
  const Value: TModelBaseList<TModelERPdependentes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdependentes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdependentes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

