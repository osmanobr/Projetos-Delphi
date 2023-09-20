
unit Controller.ERP.lote_controle_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlotecontroleitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlotecontroleitem;
    FModelList: TModelBaseList<TModelERPlotecontroleitem>; 
    FModel: TModelERPlotecontroleitem;
    procedure SetModel(const Value: TModelERPlotecontroleitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlotecontroleitem>);

  public 
    property Model : TModelERPlotecontroleitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlotecontroleitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlotecontroleitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlotecontroleitem>.Create;  
  Self.FModelList.Add(TModelERPlotecontroleitem.Create); 
  Self.FModel           := TModelERPlotecontroleitem.Create; 
  Self.FDal             := TDalERPlotecontroleitem.Create( Param, True ); 
end; 

procedure TControllerERPlotecontroleitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlotecontroleitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlotecontroleitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlotecontroleitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlotecontroleitem.SetModel(  
  const Value: TModelERPlotecontroleitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlotecontroleitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlotecontroleitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlotecontroleitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlotecontroleitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

