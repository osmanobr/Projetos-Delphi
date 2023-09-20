
unit Controller.ERP.plano_conta_dre;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPplanocontadre = class(TControllerBase, IController) 
  private 
    FDal : TViewERPplanocontadre;
    FModelList: TModelBaseList<TModelERPplanocontadre>; 
    FModel: TModelERPplanocontadre;
    procedure SetModel(const Value: TModelERPplanocontadre); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPplanocontadre>);

  public 
    property Model : TModelERPplanocontadre read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPplanocontadre> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPplanocontadre.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPplanocontadre>.Create;  
  Self.FModelList.Add(TModelERPplanocontadre.Create); 
  Self.FModel           := TModelERPplanocontadre.Create; 
  Self.FDal             := TDalERPplanocontadre.Create( Param, True ); 
end; 

procedure TControllerERPplanocontadre.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPplanocontadre.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPplanocontadre.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPplanocontadre.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPplanocontadre.SetModel(  
  const Value: TModelERPplanocontadre); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPplanocontadre.SetModelList(  
  const Value: TModelBaseList<TModelERPplanocontadre>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPplanocontadre.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPplanocontadre.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

