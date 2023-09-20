
unit Controller.ERP.terminal_center;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPterminalcenter = class(TControllerBase, IController) 
  private 
    FDal : TViewERPterminalcenter;
    FModelList: TModelBaseList<TModelERPterminalcenter>; 
    FModel: TModelERPterminalcenter;
    procedure SetModel(const Value: TModelERPterminalcenter); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPterminalcenter>);

  public 
    property Model : TModelERPterminalcenter read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPterminalcenter> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPterminalcenter.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPterminalcenter>.Create;  
  Self.FModelList.Add(TModelERPterminalcenter.Create); 
  Self.FModel           := TModelERPterminalcenter.Create; 
  Self.FDal             := TDalERPterminalcenter.Create( Param, True ); 
end; 

procedure TControllerERPterminalcenter.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPterminalcenter.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPterminalcenter.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPterminalcenter.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPterminalcenter.SetModel(  
  const Value: TModelERPterminalcenter); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPterminalcenter.SetModelList(  
  const Value: TModelBaseList<TModelERPterminalcenter>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPterminalcenter.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPterminalcenter.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

