
unit Controller.ERP.remessa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPremessa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPremessa;
    FModelList: TModelBaseList<TModelERPremessa>; 
    FModel: TModelERPremessa;
    procedure SetModel(const Value: TModelERPremessa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPremessa>);

  public 
    property Model : TModelERPremessa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPremessa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPremessa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPremessa>.Create;  
  Self.FModelList.Add(TModelERPremessa.Create); 
  Self.FModel           := TModelERPremessa.Create; 
  Self.FDal             := TDalERPremessa.Create( Param, True ); 
end; 

procedure TControllerERPremessa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPremessa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPremessa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPremessa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPremessa.SetModel(  
  const Value: TModelERPremessa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPremessa.SetModelList(  
  const Value: TModelBaseList<TModelERPremessa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPremessa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPremessa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

