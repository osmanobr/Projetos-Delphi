
unit Controller.ERP.orcamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPorcamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPorcamento;
    FModelList: TModelBaseList<TModelERPorcamento>; 
    FModel: TModelERPorcamento;
    procedure SetModel(const Value: TModelERPorcamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPorcamento>);

  public 
    property Model : TModelERPorcamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPorcamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPorcamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPorcamento>.Create;  
  Self.FModelList.Add(TModelERPorcamento.Create); 
  Self.FModel           := TModelERPorcamento.Create; 
  Self.FDal             := TDalERPorcamento.Create( Param, True ); 
end; 

procedure TControllerERPorcamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPorcamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPorcamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPorcamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPorcamento.SetModel(  
  const Value: TModelERPorcamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPorcamento.SetModelList(  
  const Value: TModelBaseList<TModelERPorcamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPorcamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPorcamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

