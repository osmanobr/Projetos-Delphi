
unit Controller.ERP.cesta;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcesta = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcesta;
    FModelList: TModelBaseList<TModelERPcesta>; 
    FModel: TModelERPcesta;
    procedure SetModel(const Value: TModelERPcesta); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcesta>);

  public 
    property Model : TModelERPcesta read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcesta> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcesta.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcesta>.Create;  
  Self.FModelList.Add(TModelERPcesta.Create); 
  Self.FModel           := TModelERPcesta.Create; 
  Self.FDal             := TDalERPcesta.Create( Param, True ); 
end; 

procedure TControllerERPcesta.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcesta.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcesta.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcesta.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcesta.SetModel(  
  const Value: TModelERPcesta); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcesta.SetModelList(  
  const Value: TModelBaseList<TModelERPcesta>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcesta.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcesta.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

