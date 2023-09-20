
unit Controller.ERP.devolucao_referencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdevolucaoreferencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdevolucaoreferencia;
    FModelList: TModelBaseList<TModelERPdevolucaoreferencia>; 
    FModel: TModelERPdevolucaoreferencia;
    procedure SetModel(const Value: TModelERPdevolucaoreferencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdevolucaoreferencia>);

  public 
    property Model : TModelERPdevolucaoreferencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdevolucaoreferencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdevolucaoreferencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdevolucaoreferencia>.Create;  
  Self.FModelList.Add(TModelERPdevolucaoreferencia.Create); 
  Self.FModel           := TModelERPdevolucaoreferencia.Create; 
  Self.FDal             := TDalERPdevolucaoreferencia.Create( Param, True ); 
end; 

procedure TControllerERPdevolucaoreferencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdevolucaoreferencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdevolucaoreferencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdevolucaoreferencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdevolucaoreferencia.SetModel(  
  const Value: TModelERPdevolucaoreferencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdevolucaoreferencia.SetModelList(  
  const Value: TModelBaseList<TModelERPdevolucaoreferencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdevolucaoreferencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdevolucaoreferencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

