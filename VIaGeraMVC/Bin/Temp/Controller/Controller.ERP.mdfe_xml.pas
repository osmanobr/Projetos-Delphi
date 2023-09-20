
unit Controller.ERP.mdfe_documentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmdfedocumentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmdfedocumentos;
    FModelList: TModelBaseList<TModelERPmdfedocumentos>; 
    FModel: TModelERPmdfedocumentos;
    procedure SetModel(const Value: TModelERPmdfedocumentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmdfedocumentos>);

  public 
    property Model : TModelERPmdfedocumentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmdfedocumentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmdfedocumentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmdfedocumentos>.Create;  
  Self.FModelList.Add(TModelERPmdfedocumentos.Create); 
  Self.FModel           := TModelERPmdfedocumentos.Create; 
  Self.FDal             := TDalERPmdfedocumentos.Create( Param, True ); 
end; 

procedure TControllerERPmdfedocumentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmdfedocumentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmdfedocumentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmdfedocumentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmdfedocumentos.SetModel(  
  const Value: TModelERPmdfedocumentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmdfedocumentos.SetModelList(  
  const Value: TModelBaseList<TModelERPmdfedocumentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmdfedocumentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmdfedocumentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

