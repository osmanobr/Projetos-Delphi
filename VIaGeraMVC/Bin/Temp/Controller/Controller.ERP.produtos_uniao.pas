
unit Controller.ERP.produtos_lote_itens;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosloteitens = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosloteitens;
    FModelList: TModelBaseList<TModelERPprodutosloteitens>; 
    FModel: TModelERPprodutosloteitens;
    procedure SetModel(const Value: TModelERPprodutosloteitens); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosloteitens>);

  public 
    property Model : TModelERPprodutosloteitens read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosloteitens> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosloteitens.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosloteitens>.Create;  
  Self.FModelList.Add(TModelERPprodutosloteitens.Create); 
  Self.FModel           := TModelERPprodutosloteitens.Create; 
  Self.FDal             := TDalERPprodutosloteitens.Create( Param, True ); 
end; 

procedure TControllerERPprodutosloteitens.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosloteitens.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosloteitens.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosloteitens.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosloteitens.SetModel(  
  const Value: TModelERPprodutosloteitens); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosloteitens.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosloteitens>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosloteitens.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosloteitens.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

