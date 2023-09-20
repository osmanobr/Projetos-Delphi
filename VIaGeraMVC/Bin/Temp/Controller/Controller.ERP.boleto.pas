
unit Controller.ERP.bicos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbicos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbicos;
    FModelList: TModelBaseList<TModelERPbicos>; 
    FModel: TModelERPbicos;
    procedure SetModel(const Value: TModelERPbicos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbicos>);

  public 
    property Model : TModelERPbicos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbicos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbicos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbicos>.Create;  
  Self.FModelList.Add(TModelERPbicos.Create); 
  Self.FModel           := TModelERPbicos.Create; 
  Self.FDal             := TDalERPbicos.Create( Param, True ); 
end; 

procedure TControllerERPbicos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbicos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbicos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbicos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbicos.SetModel(  
  const Value: TModelERPbicos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbicos.SetModelList(  
  const Value: TModelBaseList<TModelERPbicos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbicos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbicos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

