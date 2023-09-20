
unit Controller.ERP.consignado_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPconsignadoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPconsignadoitem;
    FModelList: TModelBaseList<TModelERPconsignadoitem>; 
    FModel: TModelERPconsignadoitem;
    procedure SetModel(const Value: TModelERPconsignadoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPconsignadoitem>);

  public 
    property Model : TModelERPconsignadoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPconsignadoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPconsignadoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPconsignadoitem>.Create;  
  Self.FModelList.Add(TModelERPconsignadoitem.Create); 
  Self.FModel           := TModelERPconsignadoitem.Create; 
  Self.FDal             := TDalERPconsignadoitem.Create( Param, True ); 
end; 

procedure TControllerERPconsignadoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPconsignadoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPconsignadoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPconsignadoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPconsignadoitem.SetModel(  
  const Value: TModelERPconsignadoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPconsignadoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPconsignadoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPconsignadoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPconsignadoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

