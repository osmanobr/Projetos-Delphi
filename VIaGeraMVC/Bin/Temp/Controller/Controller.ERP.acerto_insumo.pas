
unit Controller.ERP.acerto_almoxarifado_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacertoalmoxarifadoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacertoalmoxarifadoitem;
    FModelList: TModelBaseList<TModelERPacertoalmoxarifadoitem>; 
    FModel: TModelERPacertoalmoxarifadoitem;
    procedure SetModel(const Value: TModelERPacertoalmoxarifadoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacertoalmoxarifadoitem>);

  public 
    property Model : TModelERPacertoalmoxarifadoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacertoalmoxarifadoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacertoalmoxarifadoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacertoalmoxarifadoitem>.Create;  
  Self.FModelList.Add(TModelERPacertoalmoxarifadoitem.Create); 
  Self.FModel           := TModelERPacertoalmoxarifadoitem.Create; 
  Self.FDal             := TDalERPacertoalmoxarifadoitem.Create( Param, True ); 
end; 

procedure TControllerERPacertoalmoxarifadoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacertoalmoxarifadoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacertoalmoxarifadoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacertoalmoxarifadoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacertoalmoxarifadoitem.SetModel(  
  const Value: TModelERPacertoalmoxarifadoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacertoalmoxarifadoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPacertoalmoxarifadoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacertoalmoxarifadoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacertoalmoxarifadoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

