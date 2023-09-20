
unit Controller.ERP.ncm_update;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPncmupdate = class(TControllerBase, IController) 
  private 
    FDal : TViewERPncmupdate;
    FModelList: TModelBaseList<TModelERPncmupdate>; 
    FModel: TModelERPncmupdate;
    procedure SetModel(const Value: TModelERPncmupdate); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPncmupdate>);

  public 
    property Model : TModelERPncmupdate read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPncmupdate> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPncmupdate.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPncmupdate>.Create;  
  Self.FModelList.Add(TModelERPncmupdate.Create); 
  Self.FModel           := TModelERPncmupdate.Create; 
  Self.FDal             := TDalERPncmupdate.Create( Param, True ); 
end; 

procedure TControllerERPncmupdate.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPncmupdate.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPncmupdate.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPncmupdate.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPncmupdate.SetModel(  
  const Value: TModelERPncmupdate); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPncmupdate.SetModelList(  
  const Value: TModelBaseList<TModelERPncmupdate>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPncmupdate.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPncmupdate.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

