
unit Controller.ERP.plano_contas_contabeis;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPplanocontascontabeis = class(TControllerBase, IController) 
  private 
    FDal : TViewERPplanocontascontabeis;
    FModelList: TModelBaseList<TModelERPplanocontascontabeis>; 
    FModel: TModelERPplanocontascontabeis;
    procedure SetModel(const Value: TModelERPplanocontascontabeis); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPplanocontascontabeis>);

  public 
    property Model : TModelERPplanocontascontabeis read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPplanocontascontabeis> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPplanocontascontabeis.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPplanocontascontabeis>.Create;  
  Self.FModelList.Add(TModelERPplanocontascontabeis.Create); 
  Self.FModel           := TModelERPplanocontascontabeis.Create; 
  Self.FDal             := TDalERPplanocontascontabeis.Create( Param, True ); 
end; 

procedure TControllerERPplanocontascontabeis.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPplanocontascontabeis.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPplanocontascontabeis.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPplanocontascontabeis.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPplanocontascontabeis.SetModel(  
  const Value: TModelERPplanocontascontabeis); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPplanocontascontabeis.SetModelList(  
  const Value: TModelBaseList<TModelERPplanocontascontabeis>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPplanocontascontabeis.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPplanocontascontabeis.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

