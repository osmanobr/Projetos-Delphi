
unit Controller.ERP.atividade;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPatividade = class(TControllerBase, IController) 
  private 
    FDal : TViewERPatividade;
    FModelList: TModelBaseList<TModelERPatividade>; 
    FModel: TModelERPatividade;
    procedure SetModel(const Value: TModelERPatividade); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPatividade>);

  public 
    property Model : TModelERPatividade read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPatividade> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPatividade.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPatividade>.Create;  
  Self.FModelList.Add(TModelERPatividade.Create); 
  Self.FModel           := TModelERPatividade.Create; 
  Self.FDal             := TDalERPatividade.Create( Param, True ); 
end; 

procedure TControllerERPatividade.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPatividade.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPatividade.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPatividade.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPatividade.SetModel(  
  const Value: TModelERPatividade); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPatividade.SetModelList(  
  const Value: TModelBaseList<TModelERPatividade>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPatividade.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPatividade.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

