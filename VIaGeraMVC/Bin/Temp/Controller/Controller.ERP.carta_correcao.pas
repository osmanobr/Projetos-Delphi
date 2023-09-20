
unit Controller.ERP.carne;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcarne = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcarne;
    FModelList: TModelBaseList<TModelERPcarne>; 
    FModel: TModelERPcarne;
    procedure SetModel(const Value: TModelERPcarne); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcarne>);

  public 
    property Model : TModelERPcarne read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcarne> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcarne.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcarne>.Create;  
  Self.FModelList.Add(TModelERPcarne.Create); 
  Self.FModel           := TModelERPcarne.Create; 
  Self.FDal             := TDalERPcarne.Create( Param, True ); 
end; 

procedure TControllerERPcarne.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcarne.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcarne.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcarne.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcarne.SetModel(  
  const Value: TModelERPcarne); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcarne.SetModelList(  
  const Value: TModelBaseList<TModelERPcarne>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcarne.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcarne.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

