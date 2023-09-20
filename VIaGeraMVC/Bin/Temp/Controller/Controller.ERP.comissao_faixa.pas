
unit Controller.ERP.comissao_cobrador;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaocobrador = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaocobrador;
    FModelList: TModelBaseList<TModelERPcomissaocobrador>; 
    FModel: TModelERPcomissaocobrador;
    procedure SetModel(const Value: TModelERPcomissaocobrador); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaocobrador>);

  public 
    property Model : TModelERPcomissaocobrador read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaocobrador> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaocobrador.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaocobrador>.Create;  
  Self.FModelList.Add(TModelERPcomissaocobrador.Create); 
  Self.FModel           := TModelERPcomissaocobrador.Create; 
  Self.FDal             := TDalERPcomissaocobrador.Create( Param, True ); 
end; 

procedure TControllerERPcomissaocobrador.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaocobrador.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaocobrador.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaocobrador.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaocobrador.SetModel(  
  const Value: TModelERPcomissaocobrador); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaocobrador.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaocobrador>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaocobrador.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaocobrador.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

