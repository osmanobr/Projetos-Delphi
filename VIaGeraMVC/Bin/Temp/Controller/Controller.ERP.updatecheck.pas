
unit Controller.ERP.update;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPupdate = class(TControllerBase, IController) 
  private 
    FDal : TViewERPupdate;
    FModelList: TModelBaseList<TModelERPupdate>; 
    FModel: TModelERPupdate;
    procedure SetModel(const Value: TModelERPupdate); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPupdate>);

  public 
    property Model : TModelERPupdate read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPupdate> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPupdate.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPupdate>.Create;  
  Self.FModelList.Add(TModelERPupdate.Create); 
  Self.FModel           := TModelERPupdate.Create; 
  Self.FDal             := TDalERPupdate.Create( Param, True ); 
end; 

procedure TControllerERPupdate.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPupdate.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPupdate.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPupdate.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPupdate.SetModel(  
  const Value: TModelERPupdate); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPupdate.SetModelList(  
  const Value: TModelBaseList<TModelERPupdate>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPupdate.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPupdate.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

