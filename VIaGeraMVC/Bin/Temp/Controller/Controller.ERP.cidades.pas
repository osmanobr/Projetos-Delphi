
unit Controller.ERP.cheques_emitidos_excluidos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchequesemitidosexcluidos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchequesemitidosexcluidos;
    FModelList: TModelBaseList<TModelERPchequesemitidosexcluidos>; 
    FModel: TModelERPchequesemitidosexcluidos;
    procedure SetModel(const Value: TModelERPchequesemitidosexcluidos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchequesemitidosexcluidos>);

  public 
    property Model : TModelERPchequesemitidosexcluidos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchequesemitidosexcluidos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchequesemitidosexcluidos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchequesemitidosexcluidos>.Create;  
  Self.FModelList.Add(TModelERPchequesemitidosexcluidos.Create); 
  Self.FModel           := TModelERPchequesemitidosexcluidos.Create; 
  Self.FDal             := TDalERPchequesemitidosexcluidos.Create( Param, True ); 
end; 

procedure TControllerERPchequesemitidosexcluidos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchequesemitidosexcluidos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchequesemitidosexcluidos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchequesemitidosexcluidos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchequesemitidosexcluidos.SetModel(  
  const Value: TModelERPchequesemitidosexcluidos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchequesemitidosexcluidos.SetModelList(  
  const Value: TModelBaseList<TModelERPchequesemitidosexcluidos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchequesemitidosexcluidos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchequesemitidosexcluidos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

