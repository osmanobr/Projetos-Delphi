
unit Controller.ERP.terminal;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPterminal = class(TControllerBase, IController) 
  private 
    FDal : TViewERPterminal;
    FModelList: TModelBaseList<TModelERPterminal>; 
    FModel: TModelERPterminal;
    procedure SetModel(const Value: TModelERPterminal); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPterminal>);

  public 
    property Model : TModelERPterminal read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPterminal> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPterminal.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPterminal>.Create;  
  Self.FModelList.Add(TModelERPterminal.Create); 
  Self.FModel           := TModelERPterminal.Create; 
  Self.FDal             := TDalERPterminal.Create( Param, True ); 
end; 

procedure TControllerERPterminal.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPterminal.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPterminal.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPterminal.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPterminal.SetModel(  
  const Value: TModelERPterminal); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPterminal.SetModelList(  
  const Value: TModelBaseList<TModelERPterminal>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPterminal.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPterminal.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

