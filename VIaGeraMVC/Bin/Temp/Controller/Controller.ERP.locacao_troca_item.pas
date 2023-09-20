
unit Controller.ERP.locacao_troca;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaotroca = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaotroca;
    FModelList: TModelBaseList<TModelERPlocacaotroca>; 
    FModel: TModelERPlocacaotroca;
    procedure SetModel(const Value: TModelERPlocacaotroca); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaotroca>);

  public 
    property Model : TModelERPlocacaotroca read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaotroca> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaotroca.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaotroca>.Create;  
  Self.FModelList.Add(TModelERPlocacaotroca.Create); 
  Self.FModel           := TModelERPlocacaotroca.Create; 
  Self.FDal             := TDalERPlocacaotroca.Create( Param, True ); 
end; 

procedure TControllerERPlocacaotroca.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaotroca.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaotroca.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaotroca.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaotroca.SetModel(  
  const Value: TModelERPlocacaotroca); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaotroca.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaotroca>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaotroca.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaotroca.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

