
unit Controller.ERP.pmpf;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpmpf = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpmpf;
    FModelList: TModelBaseList<TModelERPpmpf>; 
    FModel: TModelERPpmpf;
    procedure SetModel(const Value: TModelERPpmpf); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpmpf>);

  public 
    property Model : TModelERPpmpf read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpmpf> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpmpf.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpmpf>.Create;  
  Self.FModelList.Add(TModelERPpmpf.Create); 
  Self.FModel           := TModelERPpmpf.Create; 
  Self.FDal             := TDalERPpmpf.Create( Param, True ); 
end; 

procedure TControllerERPpmpf.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpmpf.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpmpf.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpmpf.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpmpf.SetModel(  
  const Value: TModelERPpmpf); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpmpf.SetModelList(  
  const Value: TModelBaseList<TModelERPpmpf>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpmpf.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpmpf.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

