
unit Controller.ERP.conta_receber_remessa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberremessa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberremessa;
    FModelList: TModelBaseList<TModelERPcontareceberremessa>; 
    FModel: TModelERPcontareceberremessa;
    procedure SetModel(const Value: TModelERPcontareceberremessa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberremessa>);

  public 
    property Model : TModelERPcontareceberremessa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberremessa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberremessa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberremessa>.Create;  
  Self.FModelList.Add(TModelERPcontareceberremessa.Create); 
  Self.FModel           := TModelERPcontareceberremessa.Create; 
  Self.FDal             := TDalERPcontareceberremessa.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberremessa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberremessa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberremessa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberremessa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberremessa.SetModel(  
  const Value: TModelERPcontareceberremessa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberremessa.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberremessa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberremessa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberremessa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

