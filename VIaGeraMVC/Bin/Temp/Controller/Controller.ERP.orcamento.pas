
unit Controller.ERP.op_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPopitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPopitem;
    FModelList: TModelBaseList<TModelERPopitem>; 
    FModel: TModelERPopitem;
    procedure SetModel(const Value: TModelERPopitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPopitem>);

  public 
    property Model : TModelERPopitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPopitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPopitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPopitem>.Create;  
  Self.FModelList.Add(TModelERPopitem.Create); 
  Self.FModel           := TModelERPopitem.Create; 
  Self.FDal             := TDalERPopitem.Create( Param, True ); 
end; 

procedure TControllerERPopitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPopitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPopitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPopitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPopitem.SetModel(  
  const Value: TModelERPopitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPopitem.SetModelList(  
  const Value: TModelBaseList<TModelERPopitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPopitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPopitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

