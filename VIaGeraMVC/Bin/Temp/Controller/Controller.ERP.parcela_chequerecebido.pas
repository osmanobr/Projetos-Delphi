
unit Controller.ERP.parceiros;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPparceiros = class(TControllerBase, IController) 
  private 
    FDal : TViewERPparceiros;
    FModelList: TModelBaseList<TModelERPparceiros>; 
    FModel: TModelERPparceiros;
    procedure SetModel(const Value: TModelERPparceiros); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPparceiros>);

  public 
    property Model : TModelERPparceiros read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPparceiros> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPparceiros.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPparceiros>.Create;  
  Self.FModelList.Add(TModelERPparceiros.Create); 
  Self.FModel           := TModelERPparceiros.Create; 
  Self.FDal             := TDalERPparceiros.Create( Param, True ); 
end; 

procedure TControllerERPparceiros.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPparceiros.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPparceiros.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPparceiros.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPparceiros.SetModel(  
  const Value: TModelERPparceiros); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPparceiros.SetModelList(  
  const Value: TModelBaseList<TModelERPparceiros>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPparceiros.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPparceiros.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

