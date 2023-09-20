
unit Controller.ERP.prescritor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprescritor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprescritor;
    FModelList: TModelBaseList<TModelERPprescritor>; 
    FModel: TModelERPprescritor;
    procedure SetModel(const Value: TModelERPprescritor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprescritor>);

  public 
    property Model : TModelERPprescritor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprescritor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprescritor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprescritor>.Create;  
  Self.FModelList.Add(TModelERPprescritor.Create); 
  Self.FModel           := TModelERPprescritor.Create; 
  Self.FDal             := TDalERPprescritor.Create( Param, True ); 
end; 

procedure TControllerERPprescritor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprescritor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprescritor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprescritor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprescritor.SetModel(  
  const Value: TModelERPprescritor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprescritor.SetModelList(  
  const Value: TModelBaseList<TModelERPprescritor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprescritor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprescritor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

