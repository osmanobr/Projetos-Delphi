
unit Controller.ERP.comissao_os_indicador;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaoosindicador = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaoosindicador;
    FModelList: TModelBaseList<TModelERPcomissaoosindicador>; 
    FModel: TModelERPcomissaoosindicador;
    procedure SetModel(const Value: TModelERPcomissaoosindicador); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaoosindicador>);

  public 
    property Model : TModelERPcomissaoosindicador read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaoosindicador> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaoosindicador.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaoosindicador>.Create;  
  Self.FModelList.Add(TModelERPcomissaoosindicador.Create); 
  Self.FModel           := TModelERPcomissaoosindicador.Create; 
  Self.FDal             := TDalERPcomissaoosindicador.Create( Param, True ); 
end; 

procedure TControllerERPcomissaoosindicador.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaoosindicador.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaoosindicador.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaoosindicador.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaoosindicador.SetModel(  
  const Value: TModelERPcomissaoosindicador); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaoosindicador.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaoosindicador>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaoosindicador.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaoosindicador.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

