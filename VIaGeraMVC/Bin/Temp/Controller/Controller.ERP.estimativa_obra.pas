
unit Controller.ERP.equipamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPequipamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPequipamento;
    FModelList: TModelBaseList<TModelERPequipamento>; 
    FModel: TModelERPequipamento;
    procedure SetModel(const Value: TModelERPequipamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPequipamento>);

  public 
    property Model : TModelERPequipamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPequipamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPequipamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPequipamento>.Create;  
  Self.FModelList.Add(TModelERPequipamento.Create); 
  Self.FModel           := TModelERPequipamento.Create; 
  Self.FDal             := TDalERPequipamento.Create( Param, True ); 
end; 

procedure TControllerERPequipamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPequipamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPequipamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPequipamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPequipamento.SetModel(  
  const Value: TModelERPequipamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPequipamento.SetModelList(  
  const Value: TModelBaseList<TModelERPequipamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPequipamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPequipamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

