
unit Controller.ERP.leitura_bloco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleiturabloco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleiturabloco;
    FModelList: TModelBaseList<TModelERPleiturabloco>; 
    FModel: TModelERPleiturabloco;
    procedure SetModel(const Value: TModelERPleiturabloco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleiturabloco>);

  public 
    property Model : TModelERPleiturabloco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleiturabloco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleiturabloco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleiturabloco>.Create;  
  Self.FModelList.Add(TModelERPleiturabloco.Create); 
  Self.FModel           := TModelERPleiturabloco.Create; 
  Self.FDal             := TDalERPleiturabloco.Create( Param, True ); 
end; 

procedure TControllerERPleiturabloco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleiturabloco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleiturabloco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleiturabloco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleiturabloco.SetModel(  
  const Value: TModelERPleiturabloco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleiturabloco.SetModelList(  
  const Value: TModelBaseList<TModelERPleiturabloco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleiturabloco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleiturabloco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

