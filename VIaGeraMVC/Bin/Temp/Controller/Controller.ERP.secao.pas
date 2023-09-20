
unit Controller.ERP.rotas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERProtas = class(TControllerBase, IController) 
  private 
    FDal : TViewERProtas;
    FModelList: TModelBaseList<TModelERProtas>; 
    FModel: TModelERProtas;
    procedure SetModel(const Value: TModelERProtas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERProtas>);

  public 
    property Model : TModelERProtas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERProtas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERProtas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERProtas>.Create;  
  Self.FModelList.Add(TModelERProtas.Create); 
  Self.FModel           := TModelERProtas.Create; 
  Self.FDal             := TDalERProtas.Create( Param, True ); 
end; 

procedure TControllerERProtas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERProtas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERProtas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERProtas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERProtas.SetModel(  
  const Value: TModelERProtas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERProtas.SetModelList(  
  const Value: TModelBaseList<TModelERProtas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERProtas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERProtas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

