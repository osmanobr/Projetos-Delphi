
unit Controller.ERP.codigo_ibge;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcodigoibge = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcodigoibge;
    FModelList: TModelBaseList<TModelERPcodigoibge>; 
    FModel: TModelERPcodigoibge;
    procedure SetModel(const Value: TModelERPcodigoibge); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcodigoibge>);

  public 
    property Model : TModelERPcodigoibge read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcodigoibge> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcodigoibge.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcodigoibge>.Create;  
  Self.FModelList.Add(TModelERPcodigoibge.Create); 
  Self.FModel           := TModelERPcodigoibge.Create; 
  Self.FDal             := TDalERPcodigoibge.Create( Param, True ); 
end; 

procedure TControllerERPcodigoibge.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcodigoibge.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcodigoibge.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcodigoibge.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcodigoibge.SetModel(  
  const Value: TModelERPcodigoibge); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcodigoibge.SetModelList(  
  const Value: TModelBaseList<TModelERPcodigoibge>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcodigoibge.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcodigoibge.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

