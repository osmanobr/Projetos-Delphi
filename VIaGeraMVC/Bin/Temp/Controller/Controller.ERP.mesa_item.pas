
unit Controller.ERP.mesa_haver;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesahaver = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesahaver;
    FModelList: TModelBaseList<TModelERPmesahaver>; 
    FModel: TModelERPmesahaver;
    procedure SetModel(const Value: TModelERPmesahaver); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesahaver>);

  public 
    property Model : TModelERPmesahaver read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesahaver> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesahaver.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesahaver>.Create;  
  Self.FModelList.Add(TModelERPmesahaver.Create); 
  Self.FModel           := TModelERPmesahaver.Create; 
  Self.FDal             := TDalERPmesahaver.Create( Param, True ); 
end; 

procedure TControllerERPmesahaver.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesahaver.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesahaver.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesahaver.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesahaver.SetModel(  
  const Value: TModelERPmesahaver); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesahaver.SetModelList(  
  const Value: TModelBaseList<TModelERPmesahaver>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesahaver.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesahaver.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

