
unit Controller.ERP.promocao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpromocao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpromocao;
    FModelList: TModelBaseList<TModelERPpromocao>; 
    FModel: TModelERPpromocao;
    procedure SetModel(const Value: TModelERPpromocao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpromocao>);

  public 
    property Model : TModelERPpromocao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpromocao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpromocao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpromocao>.Create;  
  Self.FModelList.Add(TModelERPpromocao.Create); 
  Self.FModel           := TModelERPpromocao.Create; 
  Self.FDal             := TDalERPpromocao.Create( Param, True ); 
end; 

procedure TControllerERPpromocao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpromocao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpromocao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpromocao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpromocao.SetModel(  
  const Value: TModelERPpromocao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpromocao.SetModelList(  
  const Value: TModelBaseList<TModelERPpromocao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpromocao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpromocao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

