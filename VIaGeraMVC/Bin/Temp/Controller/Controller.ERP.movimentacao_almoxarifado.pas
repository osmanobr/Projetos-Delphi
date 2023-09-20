
unit Controller.ERP.motorista_documentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmotoristadocumentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmotoristadocumentos;
    FModelList: TModelBaseList<TModelERPmotoristadocumentos>; 
    FModel: TModelERPmotoristadocumentos;
    procedure SetModel(const Value: TModelERPmotoristadocumentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmotoristadocumentos>);

  public 
    property Model : TModelERPmotoristadocumentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmotoristadocumentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmotoristadocumentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmotoristadocumentos>.Create;  
  Self.FModelList.Add(TModelERPmotoristadocumentos.Create); 
  Self.FModel           := TModelERPmotoristadocumentos.Create; 
  Self.FDal             := TDalERPmotoristadocumentos.Create( Param, True ); 
end; 

procedure TControllerERPmotoristadocumentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmotoristadocumentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmotoristadocumentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmotoristadocumentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmotoristadocumentos.SetModel(  
  const Value: TModelERPmotoristadocumentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmotoristadocumentos.SetModelList(  
  const Value: TModelBaseList<TModelERPmotoristadocumentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmotoristadocumentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmotoristadocumentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

