
unit Controller.ERP.estimativa_obra_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestimativaobraitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestimativaobraitem;
    FModelList: TModelBaseList<TModelERPestimativaobraitem>; 
    FModel: TModelERPestimativaobraitem;
    procedure SetModel(const Value: TModelERPestimativaobraitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestimativaobraitem>);

  public 
    property Model : TModelERPestimativaobraitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestimativaobraitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestimativaobraitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestimativaobraitem>.Create;  
  Self.FModelList.Add(TModelERPestimativaobraitem.Create); 
  Self.FModel           := TModelERPestimativaobraitem.Create; 
  Self.FDal             := TDalERPestimativaobraitem.Create( Param, True ); 
end; 

procedure TControllerERPestimativaobraitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestimativaobraitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestimativaobraitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestimativaobraitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestimativaobraitem.SetModel(  
  const Value: TModelERPestimativaobraitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestimativaobraitem.SetModelList(  
  const Value: TModelBaseList<TModelERPestimativaobraitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestimativaobraitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestimativaobraitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

