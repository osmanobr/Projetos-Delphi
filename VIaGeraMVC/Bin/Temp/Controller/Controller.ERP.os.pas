
unit Controller.ERP.orcamento_uniao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPorcamentouniao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPorcamentouniao;
    FModelList: TModelBaseList<TModelERPorcamentouniao>; 
    FModel: TModelERPorcamentouniao;
    procedure SetModel(const Value: TModelERPorcamentouniao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPorcamentouniao>);

  public 
    property Model : TModelERPorcamentouniao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPorcamentouniao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPorcamentouniao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPorcamentouniao>.Create;  
  Self.FModelList.Add(TModelERPorcamentouniao.Create); 
  Self.FModel           := TModelERPorcamentouniao.Create; 
  Self.FDal             := TDalERPorcamentouniao.Create( Param, True ); 
end; 

procedure TControllerERPorcamentouniao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPorcamentouniao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPorcamentouniao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPorcamentouniao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPorcamentouniao.SetModel(  
  const Value: TModelERPorcamentouniao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPorcamentouniao.SetModelList(  
  const Value: TModelBaseList<TModelERPorcamentouniao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPorcamentouniao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPorcamentouniao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

