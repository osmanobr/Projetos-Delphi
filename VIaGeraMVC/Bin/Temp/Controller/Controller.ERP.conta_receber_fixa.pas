
unit Controller.ERP.conta_receber_custodia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontarecebercustodia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontarecebercustodia;
    FModelList: TModelBaseList<TModelERPcontarecebercustodia>; 
    FModel: TModelERPcontarecebercustodia;
    procedure SetModel(const Value: TModelERPcontarecebercustodia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontarecebercustodia>);

  public 
    property Model : TModelERPcontarecebercustodia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontarecebercustodia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontarecebercustodia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontarecebercustodia>.Create;  
  Self.FModelList.Add(TModelERPcontarecebercustodia.Create); 
  Self.FModel           := TModelERPcontarecebercustodia.Create; 
  Self.FDal             := TDalERPcontarecebercustodia.Create( Param, True ); 
end; 

procedure TControllerERPcontarecebercustodia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontarecebercustodia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontarecebercustodia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontarecebercustodia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontarecebercustodia.SetModel(  
  const Value: TModelERPcontarecebercustodia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontarecebercustodia.SetModelList(  
  const Value: TModelBaseList<TModelERPcontarecebercustodia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontarecebercustodia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontarecebercustodia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

