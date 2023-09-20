
unit Controller.ERP.cest;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcest = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcest;
    FModelList: TModelBaseList<TModelERPcest>; 
    FModel: TModelERPcest;
    procedure SetModel(const Value: TModelERPcest); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcest>);

  public 
    property Model : TModelERPcest read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcest> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcest.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcest>.Create;  
  Self.FModelList.Add(TModelERPcest.Create); 
  Self.FModel           := TModelERPcest.Create; 
  Self.FDal             := TDalERPcest.Create( Param, True ); 
end; 

procedure TControllerERPcest.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcest.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcest.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcest.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcest.SetModel(  
  const Value: TModelERPcest); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcest.SetModelList(  
  const Value: TModelBaseList<TModelERPcest>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcest.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcest.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

