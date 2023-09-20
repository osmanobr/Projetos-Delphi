
unit Controller.ERP.conta_receber_uniao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberuniao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberuniao;
    FModelList: TModelBaseList<TModelERPcontareceberuniao>; 
    FModel: TModelERPcontareceberuniao;
    procedure SetModel(const Value: TModelERPcontareceberuniao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberuniao>);

  public 
    property Model : TModelERPcontareceberuniao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberuniao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberuniao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberuniao>.Create;  
  Self.FModelList.Add(TModelERPcontareceberuniao.Create); 
  Self.FModel           := TModelERPcontareceberuniao.Create; 
  Self.FDal             := TDalERPcontareceberuniao.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberuniao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberuniao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberuniao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberuniao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberuniao.SetModel(  
  const Value: TModelERPcontareceberuniao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberuniao.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberuniao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberuniao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberuniao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

