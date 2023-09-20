
unit Controller.ERP.locacao_aditivo_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaoaditivoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaoaditivoitem;
    FModelList: TModelBaseList<TModelERPlocacaoaditivoitem>; 
    FModel: TModelERPlocacaoaditivoitem;
    procedure SetModel(const Value: TModelERPlocacaoaditivoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaoaditivoitem>);

  public 
    property Model : TModelERPlocacaoaditivoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaoaditivoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaoaditivoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaoaditivoitem>.Create;  
  Self.FModelList.Add(TModelERPlocacaoaditivoitem.Create); 
  Self.FModel           := TModelERPlocacaoaditivoitem.Create; 
  Self.FDal             := TDalERPlocacaoaditivoitem.Create( Param, True ); 
end; 

procedure TControllerERPlocacaoaditivoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaoaditivoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaoaditivoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaoaditivoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaoaditivoitem.SetModel(  
  const Value: TModelERPlocacaoaditivoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaoaditivoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaoaditivoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaoaditivoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaoaditivoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

