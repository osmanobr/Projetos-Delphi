
unit Controller.ERP.comissao_os;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomissaoos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomissaoos;
    FModelList: TModelBaseList<TModelERPcomissaoos>; 
    FModel: TModelERPcomissaoos;
    procedure SetModel(const Value: TModelERPcomissaoos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomissaoos>);

  public 
    property Model : TModelERPcomissaoos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomissaoos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomissaoos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomissaoos>.Create;  
  Self.FModelList.Add(TModelERPcomissaoos.Create); 
  Self.FModel           := TModelERPcomissaoos.Create; 
  Self.FDal             := TDalERPcomissaoos.Create( Param, True ); 
end; 

procedure TControllerERPcomissaoos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomissaoos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomissaoos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomissaoos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomissaoos.SetModel(  
  const Value: TModelERPcomissaoos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomissaoos.SetModelList(  
  const Value: TModelBaseList<TModelERPcomissaoos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomissaoos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomissaoos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

