
unit Controller.ERP.lote_controle;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlotecontrole = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlotecontrole;
    FModelList: TModelBaseList<TModelERPlotecontrole>; 
    FModel: TModelERPlotecontrole;
    procedure SetModel(const Value: TModelERPlotecontrole); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlotecontrole>);

  public 
    property Model : TModelERPlotecontrole read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlotecontrole> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlotecontrole.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlotecontrole>.Create;  
  Self.FModelList.Add(TModelERPlotecontrole.Create); 
  Self.FModel           := TModelERPlotecontrole.Create; 
  Self.FDal             := TDalERPlotecontrole.Create( Param, True ); 
end; 

procedure TControllerERPlotecontrole.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlotecontrole.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlotecontrole.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlotecontrole.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlotecontrole.SetModel(  
  const Value: TModelERPlotecontrole); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlotecontrole.SetModelList(  
  const Value: TModelBaseList<TModelERPlotecontrole>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlotecontrole.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlotecontrole.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

