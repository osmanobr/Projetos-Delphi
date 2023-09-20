
unit Controller.ERP.estoque_equipamentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoqueequipamentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoqueequipamentos;
    FModelList: TModelBaseList<TModelERPestoqueequipamentos>; 
    FModel: TModelERPestoqueequipamentos;
    procedure SetModel(const Value: TModelERPestoqueequipamentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoqueequipamentos>);

  public 
    property Model : TModelERPestoqueequipamentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoqueequipamentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoqueequipamentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoqueequipamentos>.Create;  
  Self.FModelList.Add(TModelERPestoqueequipamentos.Create); 
  Self.FModel           := TModelERPestoqueequipamentos.Create; 
  Self.FDal             := TDalERPestoqueequipamentos.Create( Param, True ); 
end; 

procedure TControllerERPestoqueequipamentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoqueequipamentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoqueequipamentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoqueequipamentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoqueequipamentos.SetModel(  
  const Value: TModelERPestoqueequipamentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoqueequipamentos.SetModelList(  
  const Value: TModelBaseList<TModelERPestoqueequipamentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoqueequipamentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoqueequipamentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

