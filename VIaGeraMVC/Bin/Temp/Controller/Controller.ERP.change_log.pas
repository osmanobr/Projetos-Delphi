
unit Controller.ERP.cfop_import;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcfopimport = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcfopimport;
    FModelList: TModelBaseList<TModelERPcfopimport>; 
    FModel: TModelERPcfopimport;
    procedure SetModel(const Value: TModelERPcfopimport); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcfopimport>);

  public 
    property Model : TModelERPcfopimport read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcfopimport> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcfopimport.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcfopimport>.Create;  
  Self.FModelList.Add(TModelERPcfopimport.Create); 
  Self.FModel           := TModelERPcfopimport.Create; 
  Self.FDal             := TDalERPcfopimport.Create( Param, True ); 
end; 

procedure TControllerERPcfopimport.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcfopimport.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcfopimport.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcfopimport.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcfopimport.SetModel(  
  const Value: TModelERPcfopimport); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcfopimport.SetModelList(  
  const Value: TModelBaseList<TModelERPcfopimport>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcfopimport.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcfopimport.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

