
unit Controller.ERP.pdv;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpdv = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpdv;
    FModelList: TModelBaseList<TModelERPpdv>; 
    FModel: TModelERPpdv;
    procedure SetModel(const Value: TModelERPpdv); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpdv>);

  public 
    property Model : TModelERPpdv read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpdv> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpdv.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpdv>.Create;  
  Self.FModelList.Add(TModelERPpdv.Create); 
  Self.FModel           := TModelERPpdv.Create; 
  Self.FDal             := TDalERPpdv.Create( Param, True ); 
end; 

procedure TControllerERPpdv.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpdv.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpdv.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpdv.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpdv.SetModel(  
  const Value: TModelERPpdv); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpdv.SetModelList(  
  const Value: TModelBaseList<TModelERPpdv>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpdv.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpdv.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

