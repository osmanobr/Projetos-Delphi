
unit Controller.ERP.ibpt;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPibpt = class(TControllerBase, IController) 
  private 
    FDal : TViewERPibpt;
    FModelList: TModelBaseList<TModelERPibpt>; 
    FModel: TModelERPibpt;
    procedure SetModel(const Value: TModelERPibpt); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPibpt>);

  public 
    property Model : TModelERPibpt read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPibpt> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPibpt.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPibpt>.Create;  
  Self.FModelList.Add(TModelERPibpt.Create); 
  Self.FModel           := TModelERPibpt.Create; 
  Self.FDal             := TDalERPibpt.Create( Param, True ); 
end; 

procedure TControllerERPibpt.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPibpt.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPibpt.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPibpt.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPibpt.SetModel(  
  const Value: TModelERPibpt); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPibpt.SetModelList(  
  const Value: TModelBaseList<TModelERPibpt>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPibpt.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPibpt.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

