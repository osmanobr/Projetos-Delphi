
unit Controller.ERP.carta_correcao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcartacorrecao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcartacorrecao;
    FModelList: TModelBaseList<TModelERPcartacorrecao>; 
    FModel: TModelERPcartacorrecao;
    procedure SetModel(const Value: TModelERPcartacorrecao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcartacorrecao>);

  public 
    property Model : TModelERPcartacorrecao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcartacorrecao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcartacorrecao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcartacorrecao>.Create;  
  Self.FModelList.Add(TModelERPcartacorrecao.Create); 
  Self.FModel           := TModelERPcartacorrecao.Create; 
  Self.FDal             := TDalERPcartacorrecao.Create( Param, True ); 
end; 

procedure TControllerERPcartacorrecao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcartacorrecao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcartacorrecao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcartacorrecao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcartacorrecao.SetModel(  
  const Value: TModelERPcartacorrecao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcartacorrecao.SetModelList(  
  const Value: TModelBaseList<TModelERPcartacorrecao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcartacorrecao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcartacorrecao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

