
unit Controller.ERP.conta_receber_fixa_lote;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberfixalote = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberfixalote;
    FModelList: TModelBaseList<TModelERPcontareceberfixalote>; 
    FModel: TModelERPcontareceberfixalote;
    procedure SetModel(const Value: TModelERPcontareceberfixalote); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberfixalote>);

  public 
    property Model : TModelERPcontareceberfixalote read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberfixalote> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberfixalote.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberfixalote>.Create;  
  Self.FModelList.Add(TModelERPcontareceberfixalote.Create); 
  Self.FModel           := TModelERPcontareceberfixalote.Create; 
  Self.FDal             := TDalERPcontareceberfixalote.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberfixalote.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberfixalote.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberfixalote.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberfixalote.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberfixalote.SetModel(  
  const Value: TModelERPcontareceberfixalote); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberfixalote.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberfixalote>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberfixalote.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberfixalote.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

