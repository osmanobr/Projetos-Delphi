
unit Controller.ERP.bovino_cortes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbovinocortes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbovinocortes;
    FModelList: TModelBaseList<TModelERPbovinocortes>; 
    FModel: TModelERPbovinocortes;
    procedure SetModel(const Value: TModelERPbovinocortes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbovinocortes>);

  public 
    property Model : TModelERPbovinocortes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbovinocortes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbovinocortes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbovinocortes>.Create;  
  Self.FModelList.Add(TModelERPbovinocortes.Create); 
  Self.FModel           := TModelERPbovinocortes.Create; 
  Self.FDal             := TDalERPbovinocortes.Create( Param, True ); 
end; 

procedure TControllerERPbovinocortes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbovinocortes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbovinocortes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbovinocortes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbovinocortes.SetModel(  
  const Value: TModelERPbovinocortes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbovinocortes.SetModelList(  
  const Value: TModelBaseList<TModelERPbovinocortes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbovinocortes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbovinocortes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

