
unit Controller.ERP.cartao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcartao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcartao;
    FModelList: TModelBaseList<TModelERPcartao>; 
    FModel: TModelERPcartao;
    procedure SetModel(const Value: TModelERPcartao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcartao>);

  public 
    property Model : TModelERPcartao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcartao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcartao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcartao>.Create;  
  Self.FModelList.Add(TModelERPcartao.Create); 
  Self.FModel           := TModelERPcartao.Create; 
  Self.FDal             := TDalERPcartao.Create( Param, True ); 
end; 

procedure TControllerERPcartao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcartao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcartao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcartao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcartao.SetModel(  
  const Value: TModelERPcartao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcartao.SetModelList(  
  const Value: TModelBaseList<TModelERPcartao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcartao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcartao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

