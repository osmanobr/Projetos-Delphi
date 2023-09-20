
unit Controller.ERP.lote_controlado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlotecontrolado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlotecontrolado;
    FModelList: TModelBaseList<TModelERPlotecontrolado>; 
    FModel: TModelERPlotecontrolado;
    procedure SetModel(const Value: TModelERPlotecontrolado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlotecontrolado>);

  public 
    property Model : TModelERPlotecontrolado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlotecontrolado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlotecontrolado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlotecontrolado>.Create;  
  Self.FModelList.Add(TModelERPlotecontrolado.Create); 
  Self.FModel           := TModelERPlotecontrolado.Create; 
  Self.FDal             := TDalERPlotecontrolado.Create( Param, True ); 
end; 

procedure TControllerERPlotecontrolado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlotecontrolado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlotecontrolado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlotecontrolado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlotecontrolado.SetModel(  
  const Value: TModelERPlotecontrolado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlotecontrolado.SetModelList(  
  const Value: TModelBaseList<TModelERPlotecontrolado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlotecontrolado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlotecontrolado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

