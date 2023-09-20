
unit Controller.ERP.supervisor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPsupervisor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPsupervisor;
    FModelList: TModelBaseList<TModelERPsupervisor>; 
    FModel: TModelERPsupervisor;
    procedure SetModel(const Value: TModelERPsupervisor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPsupervisor>);

  public 
    property Model : TModelERPsupervisor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPsupervisor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPsupervisor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPsupervisor>.Create;  
  Self.FModelList.Add(TModelERPsupervisor.Create); 
  Self.FModel           := TModelERPsupervisor.Create; 
  Self.FDal             := TDalERPsupervisor.Create( Param, True ); 
end; 

procedure TControllerERPsupervisor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPsupervisor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPsupervisor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPsupervisor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPsupervisor.SetModel(  
  const Value: TModelERPsupervisor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPsupervisor.SetModelList(  
  const Value: TModelBaseList<TModelERPsupervisor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPsupervisor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPsupervisor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

