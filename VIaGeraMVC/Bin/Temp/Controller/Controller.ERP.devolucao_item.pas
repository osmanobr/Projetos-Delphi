
unit Controller.ERP.devolucao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdevolucao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdevolucao;
    FModelList: TModelBaseList<TModelERPdevolucao>; 
    FModel: TModelERPdevolucao;
    procedure SetModel(const Value: TModelERPdevolucao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdevolucao>);

  public 
    property Model : TModelERPdevolucao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdevolucao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdevolucao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdevolucao>.Create;  
  Self.FModelList.Add(TModelERPdevolucao.Create); 
  Self.FModel           := TModelERPdevolucao.Create; 
  Self.FDal             := TDalERPdevolucao.Create( Param, True ); 
end; 

procedure TControllerERPdevolucao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdevolucao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdevolucao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdevolucao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdevolucao.SetModel(  
  const Value: TModelERPdevolucao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdevolucao.SetModelList(  
  const Value: TModelBaseList<TModelERPdevolucao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdevolucao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdevolucao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

