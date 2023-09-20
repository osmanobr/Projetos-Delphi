
unit Controller.ERP.produtos_especiais;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosespeciais = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosespeciais;
    FModelList: TModelBaseList<TModelERPprodutosespeciais>; 
    FModel: TModelERPprodutosespeciais;
    procedure SetModel(const Value: TModelERPprodutosespeciais); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosespeciais>);

  public 
    property Model : TModelERPprodutosespeciais read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosespeciais> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosespeciais.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosespeciais>.Create;  
  Self.FModelList.Add(TModelERPprodutosespeciais.Create); 
  Self.FModel           := TModelERPprodutosespeciais.Create; 
  Self.FDal             := TDalERPprodutosespeciais.Create( Param, True ); 
end; 

procedure TControllerERPprodutosespeciais.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosespeciais.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosespeciais.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosespeciais.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosespeciais.SetModel(  
  const Value: TModelERPprodutosespeciais); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosespeciais.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosespeciais>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosespeciais.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosespeciais.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

