
unit Controller.ERP.controle_log_helper;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontroleloghelper = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontroleloghelper;
    FModelList: TModelBaseList<TModelERPcontroleloghelper>; 
    FModel: TModelERPcontroleloghelper;
    procedure SetModel(const Value: TModelERPcontroleloghelper); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontroleloghelper>);

  public 
    property Model : TModelERPcontroleloghelper read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontroleloghelper> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontroleloghelper.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontroleloghelper>.Create;  
  Self.FModelList.Add(TModelERPcontroleloghelper.Create); 
  Self.FModel           := TModelERPcontroleloghelper.Create; 
  Self.FDal             := TDalERPcontroleloghelper.Create( Param, True ); 
end; 

procedure TControllerERPcontroleloghelper.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontroleloghelper.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontroleloghelper.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontroleloghelper.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontroleloghelper.SetModel(  
  const Value: TModelERPcontroleloghelper); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontroleloghelper.SetModelList(  
  const Value: TModelBaseList<TModelERPcontroleloghelper>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontroleloghelper.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontroleloghelper.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

