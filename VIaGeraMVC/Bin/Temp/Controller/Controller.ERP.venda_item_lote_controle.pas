
unit Controller.ERP.venda_item_alteracao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaitemalteracao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaitemalteracao;
    FModelList: TModelBaseList<TModelERPvendaitemalteracao>; 
    FModel: TModelERPvendaitemalteracao;
    procedure SetModel(const Value: TModelERPvendaitemalteracao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaitemalteracao>);

  public 
    property Model : TModelERPvendaitemalteracao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaitemalteracao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaitemalteracao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaitemalteracao>.Create;  
  Self.FModelList.Add(TModelERPvendaitemalteracao.Create); 
  Self.FModel           := TModelERPvendaitemalteracao.Create; 
  Self.FDal             := TDalERPvendaitemalteracao.Create( Param, True ); 
end; 

procedure TControllerERPvendaitemalteracao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaitemalteracao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaitemalteracao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaitemalteracao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaitemalteracao.SetModel(  
  const Value: TModelERPvendaitemalteracao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaitemalteracao.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaitemalteracao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaitemalteracao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaitemalteracao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

