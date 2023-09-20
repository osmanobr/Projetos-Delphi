
unit Controller.ERP.balanco_uniao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbalancouniao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbalancouniao;
    FModelList: TModelBaseList<TModelERPbalancouniao>; 
    FModel: TModelERPbalancouniao;
    procedure SetModel(const Value: TModelERPbalancouniao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbalancouniao>);

  public 
    property Model : TModelERPbalancouniao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbalancouniao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbalancouniao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbalancouniao>.Create;  
  Self.FModelList.Add(TModelERPbalancouniao.Create); 
  Self.FModel           := TModelERPbalancouniao.Create; 
  Self.FDal             := TDalERPbalancouniao.Create( Param, True ); 
end; 

procedure TControllerERPbalancouniao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbalancouniao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbalancouniao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbalancouniao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbalancouniao.SetModel(  
  const Value: TModelERPbalancouniao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbalancouniao.SetModelList(  
  const Value: TModelBaseList<TModelERPbalancouniao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbalancouniao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbalancouniao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

