
unit Controller.ERP.venda_uniao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendauniao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendauniao;
    FModelList: TModelBaseList<TModelERPvendauniao>; 
    FModel: TModelERPvendauniao;
    procedure SetModel(const Value: TModelERPvendauniao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendauniao>);

  public 
    property Model : TModelERPvendauniao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendauniao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendauniao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendauniao>.Create;  
  Self.FModelList.Add(TModelERPvendauniao.Create); 
  Self.FModel           := TModelERPvendauniao.Create; 
  Self.FDal             := TDalERPvendauniao.Create( Param, True ); 
end; 

procedure TControllerERPvendauniao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendauniao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendauniao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendauniao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendauniao.SetModel(  
  const Value: TModelERPvendauniao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendauniao.SetModelList(  
  const Value: TModelBaseList<TModelERPvendauniao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendauniao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendauniao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

