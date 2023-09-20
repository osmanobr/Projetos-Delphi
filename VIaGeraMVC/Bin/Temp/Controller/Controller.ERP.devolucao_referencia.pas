
unit Controller.ERP.devolucao_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdevolucaoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdevolucaoitem;
    FModelList: TModelBaseList<TModelERPdevolucaoitem>; 
    FModel: TModelERPdevolucaoitem;
    procedure SetModel(const Value: TModelERPdevolucaoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdevolucaoitem>);

  public 
    property Model : TModelERPdevolucaoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdevolucaoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdevolucaoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdevolucaoitem>.Create;  
  Self.FModelList.Add(TModelERPdevolucaoitem.Create); 
  Self.FModel           := TModelERPdevolucaoitem.Create; 
  Self.FDal             := TDalERPdevolucaoitem.Create( Param, True ); 
end; 

procedure TControllerERPdevolucaoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdevolucaoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdevolucaoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdevolucaoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdevolucaoitem.SetModel(  
  const Value: TModelERPdevolucaoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdevolucaoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPdevolucaoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdevolucaoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdevolucaoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

