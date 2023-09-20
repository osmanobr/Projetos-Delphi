
unit Controller.ERP.locacao_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlocacaoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlocacaoitem;
    FModelList: TModelBaseList<TModelERPlocacaoitem>; 
    FModel: TModelERPlocacaoitem;
    procedure SetModel(const Value: TModelERPlocacaoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlocacaoitem>);

  public 
    property Model : TModelERPlocacaoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlocacaoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlocacaoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlocacaoitem>.Create;  
  Self.FModelList.Add(TModelERPlocacaoitem.Create); 
  Self.FModel           := TModelERPlocacaoitem.Create; 
  Self.FDal             := TDalERPlocacaoitem.Create( Param, True ); 
end; 

procedure TControllerERPlocacaoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlocacaoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlocacaoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlocacaoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlocacaoitem.SetModel(  
  const Value: TModelERPlocacaoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlocacaoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPlocacaoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlocacaoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlocacaoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

