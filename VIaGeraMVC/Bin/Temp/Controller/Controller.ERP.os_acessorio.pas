
unit Controller.ERP.os;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPos;
    FModelList: TModelBaseList<TModelERPos>; 
    FModel: TModelERPos;
    procedure SetModel(const Value: TModelERPos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPos>);

  public 
    property Model : TModelERPos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPos>.Create;  
  Self.FModelList.Add(TModelERPos.Create); 
  Self.FModel           := TModelERPos.Create; 
  Self.FDal             := TDalERPos.Create( Param, True ); 
end; 

procedure TControllerERPos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPos.SetModel(  
  const Value: TModelERPos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPos.SetModelList(  
  const Value: TModelBaseList<TModelERPos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

