
unit Controller.ERP.mesa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesa;
    FModelList: TModelBaseList<TModelERPmesa>; 
    FModel: TModelERPmesa;
    procedure SetModel(const Value: TModelERPmesa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesa>);

  public 
    property Model : TModelERPmesa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesa>.Create;  
  Self.FModelList.Add(TModelERPmesa.Create); 
  Self.FModel           := TModelERPmesa.Create; 
  Self.FDal             := TDalERPmesa.Create( Param, True ); 
end; 

procedure TControllerERPmesa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesa.SetModel(  
  const Value: TModelERPmesa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesa.SetModelList(  
  const Value: TModelBaseList<TModelERPmesa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

