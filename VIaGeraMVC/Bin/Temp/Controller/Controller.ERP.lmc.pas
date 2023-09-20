
unit Controller.ERP.licenca;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlicenca = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlicenca;
    FModelList: TModelBaseList<TModelERPlicenca>; 
    FModel: TModelERPlicenca;
    procedure SetModel(const Value: TModelERPlicenca); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlicenca>);

  public 
    property Model : TModelERPlicenca read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlicenca> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlicenca.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlicenca>.Create;  
  Self.FModelList.Add(TModelERPlicenca.Create); 
  Self.FModel           := TModelERPlicenca.Create; 
  Self.FDal             := TDalERPlicenca.Create( Param, True ); 
end; 

procedure TControllerERPlicenca.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlicenca.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlicenca.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlicenca.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlicenca.SetModel(  
  const Value: TModelERPlicenca); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlicenca.SetModelList(  
  const Value: TModelBaseList<TModelERPlicenca>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlicenca.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlicenca.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

