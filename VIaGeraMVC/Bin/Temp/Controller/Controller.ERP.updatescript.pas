
unit Controller.ERP.updatecheck;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPupdatecheck = class(TControllerBase, IController) 
  private 
    FDal : TViewERPupdatecheck;
    FModelList: TModelBaseList<TModelERPupdatecheck>; 
    FModel: TModelERPupdatecheck;
    procedure SetModel(const Value: TModelERPupdatecheck); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPupdatecheck>);

  public 
    property Model : TModelERPupdatecheck read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPupdatecheck> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPupdatecheck.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPupdatecheck>.Create;  
  Self.FModelList.Add(TModelERPupdatecheck.Create); 
  Self.FModel           := TModelERPupdatecheck.Create; 
  Self.FDal             := TDalERPupdatecheck.Create( Param, True ); 
end; 

procedure TControllerERPupdatecheck.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPupdatecheck.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPupdatecheck.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPupdatecheck.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPupdatecheck.SetModel(  
  const Value: TModelERPupdatecheck); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPupdatecheck.SetModelList(  
  const Value: TModelBaseList<TModelERPupdatecheck>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPupdatecheck.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPupdatecheck.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

