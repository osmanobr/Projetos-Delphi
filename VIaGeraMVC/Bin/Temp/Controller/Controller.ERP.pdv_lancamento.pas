
unit Controller.ERP.pdv_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpdvitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpdvitem;
    FModelList: TModelBaseList<TModelERPpdvitem>; 
    FModel: TModelERPpdvitem;
    procedure SetModel(const Value: TModelERPpdvitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpdvitem>);

  public 
    property Model : TModelERPpdvitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpdvitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpdvitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpdvitem>.Create;  
  Self.FModelList.Add(TModelERPpdvitem.Create); 
  Self.FModel           := TModelERPpdvitem.Create; 
  Self.FDal             := TDalERPpdvitem.Create( Param, True ); 
end; 

procedure TControllerERPpdvitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpdvitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpdvitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpdvitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpdvitem.SetModel(  
  const Value: TModelERPpdvitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpdvitem.SetModelList(  
  const Value: TModelBaseList<TModelERPpdvitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpdvitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpdvitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

