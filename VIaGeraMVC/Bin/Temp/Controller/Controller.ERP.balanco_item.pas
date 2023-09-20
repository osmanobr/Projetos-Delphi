
unit Controller.ERP.balanco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbalanco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbalanco;
    FModelList: TModelBaseList<TModelERPbalanco>; 
    FModel: TModelERPbalanco;
    procedure SetModel(const Value: TModelERPbalanco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbalanco>);

  public 
    property Model : TModelERPbalanco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbalanco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbalanco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbalanco>.Create;  
  Self.FModelList.Add(TModelERPbalanco.Create); 
  Self.FModel           := TModelERPbalanco.Create; 
  Self.FDal             := TDalERPbalanco.Create( Param, True ); 
end; 

procedure TControllerERPbalanco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbalanco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbalanco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbalanco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbalanco.SetModel(  
  const Value: TModelERPbalanco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbalanco.SetModelList(  
  const Value: TModelBaseList<TModelERPbalanco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbalanco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbalanco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

