
unit Controller.ERP.documentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdocumentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdocumentos;
    FModelList: TModelBaseList<TModelERPdocumentos>; 
    FModel: TModelERPdocumentos;
    procedure SetModel(const Value: TModelERPdocumentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdocumentos>);

  public 
    property Model : TModelERPdocumentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdocumentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdocumentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdocumentos>.Create;  
  Self.FModelList.Add(TModelERPdocumentos.Create); 
  Self.FModel           := TModelERPdocumentos.Create; 
  Self.FDal             := TDalERPdocumentos.Create( Param, True ); 
end; 

procedure TControllerERPdocumentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdocumentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdocumentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdocumentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdocumentos.SetModel(  
  const Value: TModelERPdocumentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdocumentos.SetModelList(  
  const Value: TModelBaseList<TModelERPdocumentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdocumentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdocumentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

