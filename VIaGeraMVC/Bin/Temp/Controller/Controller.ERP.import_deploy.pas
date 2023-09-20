
unit Controller.ERP.import_controller;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportcontroller = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportcontroller;
    FModelList: TModelBaseList<TModelERPimportcontroller>; 
    FModel: TModelERPimportcontroller;
    procedure SetModel(const Value: TModelERPimportcontroller); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportcontroller>);

  public 
    property Model : TModelERPimportcontroller read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportcontroller> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportcontroller.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportcontroller>.Create;  
  Self.FModelList.Add(TModelERPimportcontroller.Create); 
  Self.FModel           := TModelERPimportcontroller.Create; 
  Self.FDal             := TDalERPimportcontroller.Create( Param, True ); 
end; 

procedure TControllerERPimportcontroller.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportcontroller.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportcontroller.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportcontroller.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportcontroller.SetModel(  
  const Value: TModelERPimportcontroller); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportcontroller.SetModelList(  
  const Value: TModelBaseList<TModelERPimportcontroller>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportcontroller.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportcontroller.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

