
unit Controller.ERP.composicao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcomposicao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcomposicao;
    FModelList: TModelBaseList<TModelERPcomposicao>; 
    FModel: TModelERPcomposicao;
    procedure SetModel(const Value: TModelERPcomposicao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcomposicao>);

  public 
    property Model : TModelERPcomposicao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcomposicao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcomposicao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcomposicao>.Create;  
  Self.FModelList.Add(TModelERPcomposicao.Create); 
  Self.FModel           := TModelERPcomposicao.Create; 
  Self.FDal             := TDalERPcomposicao.Create( Param, True ); 
end; 

procedure TControllerERPcomposicao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcomposicao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcomposicao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcomposicao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcomposicao.SetModel(  
  const Value: TModelERPcomposicao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcomposicao.SetModelList(  
  const Value: TModelBaseList<TModelERPcomposicao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcomposicao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcomposicao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

