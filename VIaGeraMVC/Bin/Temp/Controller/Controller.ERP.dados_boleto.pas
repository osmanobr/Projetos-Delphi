
unit Controller.ERP.d;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPd = class(TControllerBase, IController) 
  private 
    FDal : TViewERPd;
    FModelList: TModelBaseList<TModelERPd>; 
    FModel: TModelERPd;
    procedure SetModel(const Value: TModelERPd); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPd>);

  public 
    property Model : TModelERPd read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPd> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPd.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPd>.Create;  
  Self.FModelList.Add(TModelERPd.Create); 
  Self.FModel           := TModelERPd.Create; 
  Self.FDal             := TDalERPd.Create( Param, True ); 
end; 

procedure TControllerERPd.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPd.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPd.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPd.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPd.SetModel(  
  const Value: TModelERPd); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPd.SetModelList(  
  const Value: TModelBaseList<TModelERPd>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPd.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPd.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

