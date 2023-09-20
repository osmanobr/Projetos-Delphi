
unit Controller.ERP.conta_receber_fixa_comissao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberfixacomissao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberfixacomissao;
    FModelList: TModelBaseList<TModelERPcontareceberfixacomissao>; 
    FModel: TModelERPcontareceberfixacomissao;
    procedure SetModel(const Value: TModelERPcontareceberfixacomissao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberfixacomissao>);

  public 
    property Model : TModelERPcontareceberfixacomissao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberfixacomissao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberfixacomissao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberfixacomissao>.Create;  
  Self.FModelList.Add(TModelERPcontareceberfixacomissao.Create); 
  Self.FModel           := TModelERPcontareceberfixacomissao.Create; 
  Self.FDal             := TDalERPcontareceberfixacomissao.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberfixacomissao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberfixacomissao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberfixacomissao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberfixacomissao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberfixacomissao.SetModel(  
  const Value: TModelERPcontareceberfixacomissao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberfixacomissao.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberfixacomissao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberfixacomissao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberfixacomissao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

