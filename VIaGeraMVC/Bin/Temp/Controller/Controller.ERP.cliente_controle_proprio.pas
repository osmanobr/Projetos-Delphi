
unit Controller.ERP.cidades;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcidades = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcidades;
    FModelList: TModelBaseList<TModelERPcidades>; 
    FModel: TModelERPcidades;
    procedure SetModel(const Value: TModelERPcidades); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcidades>);

  public 
    property Model : TModelERPcidades read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcidades> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcidades.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcidades>.Create;  
  Self.FModelList.Add(TModelERPcidades.Create); 
  Self.FModel           := TModelERPcidades.Create; 
  Self.FDal             := TDalERPcidades.Create( Param, True ); 
end; 

procedure TControllerERPcidades.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcidades.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcidades.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcidades.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcidades.SetModel(  
  const Value: TModelERPcidades); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcidades.SetModelList(  
  const Value: TModelBaseList<TModelERPcidades>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcidades.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcidades.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

