
unit Controller.ERP.telefone_parceiro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtelefoneparceiro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtelefoneparceiro;
    FModelList: TModelBaseList<TModelERPtelefoneparceiro>; 
    FModel: TModelERPtelefoneparceiro;
    procedure SetModel(const Value: TModelERPtelefoneparceiro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtelefoneparceiro>);

  public 
    property Model : TModelERPtelefoneparceiro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtelefoneparceiro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtelefoneparceiro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtelefoneparceiro>.Create;  
  Self.FModelList.Add(TModelERPtelefoneparceiro.Create); 
  Self.FModel           := TModelERPtelefoneparceiro.Create; 
  Self.FDal             := TDalERPtelefoneparceiro.Create( Param, True ); 
end; 

procedure TControllerERPtelefoneparceiro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtelefoneparceiro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtelefoneparceiro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtelefoneparceiro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtelefoneparceiro.SetModel(  
  const Value: TModelERPtelefoneparceiro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtelefoneparceiro.SetModelList(  
  const Value: TModelBaseList<TModelERPtelefoneparceiro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtelefoneparceiro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtelefoneparceiro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

