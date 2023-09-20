
unit Controller.ERP.cst_icms;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcsticms = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcsticms;
    FModelList: TModelBaseList<TModelERPcsticms>; 
    FModel: TModelERPcsticms;
    procedure SetModel(const Value: TModelERPcsticms); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcsticms>);

  public 
    property Model : TModelERPcsticms read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcsticms> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcsticms.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcsticms>.Create;  
  Self.FModelList.Add(TModelERPcsticms.Create); 
  Self.FModel           := TModelERPcsticms.Create; 
  Self.FDal             := TDalERPcsticms.Create( Param, True ); 
end; 

procedure TControllerERPcsticms.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcsticms.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcsticms.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcsticms.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcsticms.SetModel(  
  const Value: TModelERPcsticms); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcsticms.SetModelList(  
  const Value: TModelBaseList<TModelERPcsticms>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcsticms.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcsticms.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

