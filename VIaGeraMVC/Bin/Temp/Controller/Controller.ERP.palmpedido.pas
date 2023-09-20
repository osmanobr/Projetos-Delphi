
unit Controller.ERP.palmitem;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpalmitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpalmitem;
    FModelList: TModelBaseList<TModelERPpalmitem>; 
    FModel: TModelERPpalmitem;
    procedure SetModel(const Value: TModelERPpalmitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpalmitem>);

  public 
    property Model : TModelERPpalmitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpalmitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpalmitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpalmitem>.Create;  
  Self.FModelList.Add(TModelERPpalmitem.Create); 
  Self.FModel           := TModelERPpalmitem.Create; 
  Self.FDal             := TDalERPpalmitem.Create( Param, True ); 
end; 

procedure TControllerERPpalmitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpalmitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpalmitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpalmitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpalmitem.SetModel(  
  const Value: TModelERPpalmitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpalmitem.SetModelList(  
  const Value: TModelBaseList<TModelERPpalmitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpalmitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpalmitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

