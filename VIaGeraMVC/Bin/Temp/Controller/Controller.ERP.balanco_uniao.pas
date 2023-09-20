
unit Controller.ERP.balanco_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbalancoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbalancoitem;
    FModelList: TModelBaseList<TModelERPbalancoitem>; 
    FModel: TModelERPbalancoitem;
    procedure SetModel(const Value: TModelERPbalancoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbalancoitem>);

  public 
    property Model : TModelERPbalancoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbalancoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbalancoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbalancoitem>.Create;  
  Self.FModelList.Add(TModelERPbalancoitem.Create); 
  Self.FModel           := TModelERPbalancoitem.Create; 
  Self.FDal             := TDalERPbalancoitem.Create( Param, True ); 
end; 

procedure TControllerERPbalancoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbalancoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbalancoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbalancoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbalancoitem.SetModel(  
  const Value: TModelERPbalancoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbalancoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPbalancoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbalancoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbalancoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

