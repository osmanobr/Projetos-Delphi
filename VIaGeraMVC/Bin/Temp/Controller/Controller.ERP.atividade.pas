
unit Controller.ERP.associacao_contingencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPassociacaocontingencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPassociacaocontingencia;
    FModelList: TModelBaseList<TModelERPassociacaocontingencia>; 
    FModel: TModelERPassociacaocontingencia;
    procedure SetModel(const Value: TModelERPassociacaocontingencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPassociacaocontingencia>);

  public 
    property Model : TModelERPassociacaocontingencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPassociacaocontingencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPassociacaocontingencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPassociacaocontingencia>.Create;  
  Self.FModelList.Add(TModelERPassociacaocontingencia.Create); 
  Self.FModel           := TModelERPassociacaocontingencia.Create; 
  Self.FDal             := TDalERPassociacaocontingencia.Create( Param, True ); 
end; 

procedure TControllerERPassociacaocontingencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPassociacaocontingencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPassociacaocontingencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPassociacaocontingencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPassociacaocontingencia.SetModel(  
  const Value: TModelERPassociacaocontingencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPassociacaocontingencia.SetModelList(  
  const Value: TModelBaseList<TModelERPassociacaocontingencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPassociacaocontingencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPassociacaocontingencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

