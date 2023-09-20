
unit Controller.ERP.registro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPregistro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPregistro;
    FModelList: TModelBaseList<TModelERPregistro>; 
    FModel: TModelERPregistro;
    procedure SetModel(const Value: TModelERPregistro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPregistro>);

  public 
    property Model : TModelERPregistro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPregistro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPregistro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPregistro>.Create;  
  Self.FModelList.Add(TModelERPregistro.Create); 
  Self.FModel           := TModelERPregistro.Create; 
  Self.FDal             := TDalERPregistro.Create( Param, True ); 
end; 

procedure TControllerERPregistro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPregistro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPregistro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPregistro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPregistro.SetModel(  
  const Value: TModelERPregistro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPregistro.SetModelList(  
  const Value: TModelBaseList<TModelERPregistro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPregistro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPregistro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

