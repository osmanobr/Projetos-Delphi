
unit Controller.ERP.cte_documentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPctedocumentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPctedocumentos;
    FModelList: TModelBaseList<TModelERPctedocumentos>; 
    FModel: TModelERPctedocumentos;
    procedure SetModel(const Value: TModelERPctedocumentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPctedocumentos>);

  public 
    property Model : TModelERPctedocumentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPctedocumentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPctedocumentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPctedocumentos>.Create;  
  Self.FModelList.Add(TModelERPctedocumentos.Create); 
  Self.FModel           := TModelERPctedocumentos.Create; 
  Self.FDal             := TDalERPctedocumentos.Create( Param, True ); 
end; 

procedure TControllerERPctedocumentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPctedocumentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPctedocumentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPctedocumentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPctedocumentos.SetModel(  
  const Value: TModelERPctedocumentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPctedocumentos.SetModelList(  
  const Value: TModelBaseList<TModelERPctedocumentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPctedocumentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPctedocumentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

