
unit Controller.ERP.a;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPa;
    FModelList: TModelBaseList<TModelERPa>; 
    FModel: TModelERPa;
    procedure SetModel(const Value: TModelERPa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPa>);

  public 
    property Model : TModelERPa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPa>.Create;  
  Self.FModelList.Add(TModelERPa.Create); 
  Self.FModel           := TModelERPa.Create; 
  Self.FDal             := TDalERPa.Create( Param, True ); 
end; 

procedure TControllerERPa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPa.SetModel(  
  const Value: TModelERPa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPa.SetModelList(  
  const Value: TModelBaseList<TModelERPa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

