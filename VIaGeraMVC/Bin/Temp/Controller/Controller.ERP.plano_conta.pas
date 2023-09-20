
unit Controller.ERP.plano_celular;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPplanocelular = class(TControllerBase, IController) 
  private 
    FDal : TViewERPplanocelular;
    FModelList: TModelBaseList<TModelERPplanocelular>; 
    FModel: TModelERPplanocelular;
    procedure SetModel(const Value: TModelERPplanocelular); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPplanocelular>);

  public 
    property Model : TModelERPplanocelular read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPplanocelular> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPplanocelular.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPplanocelular>.Create;  
  Self.FModelList.Add(TModelERPplanocelular.Create); 
  Self.FModel           := TModelERPplanocelular.Create; 
  Self.FDal             := TDalERPplanocelular.Create( Param, True ); 
end; 

procedure TControllerERPplanocelular.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPplanocelular.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPplanocelular.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPplanocelular.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPplanocelular.SetModel(  
  const Value: TModelERPplanocelular); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPplanocelular.SetModelList(  
  const Value: TModelBaseList<TModelERPplanocelular>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPplanocelular.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPplanocelular.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

