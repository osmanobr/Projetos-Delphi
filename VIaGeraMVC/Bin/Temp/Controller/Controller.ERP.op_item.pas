
unit Controller.ERP.op;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPop = class(TControllerBase, IController) 
  private 
    FDal : TViewERPop;
    FModelList: TModelBaseList<TModelERPop>; 
    FModel: TModelERPop;
    procedure SetModel(const Value: TModelERPop); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPop>);

  public 
    property Model : TModelERPop read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPop> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPop.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPop>.Create;  
  Self.FModelList.Add(TModelERPop.Create); 
  Self.FModel           := TModelERPop.Create; 
  Self.FDal             := TDalERPop.Create( Param, True ); 
end; 

procedure TControllerERPop.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPop.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPop.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPop.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPop.SetModel(  
  const Value: TModelERPop); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPop.SetModelList(  
  const Value: TModelBaseList<TModelERPop>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPop.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPop.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

