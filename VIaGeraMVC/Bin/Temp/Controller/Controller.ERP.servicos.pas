
unit Controller.ERP.secao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPsecao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPsecao;
    FModelList: TModelBaseList<TModelERPsecao>; 
    FModel: TModelERPsecao;
    procedure SetModel(const Value: TModelERPsecao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPsecao>);

  public 
    property Model : TModelERPsecao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPsecao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPsecao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPsecao>.Create;  
  Self.FModelList.Add(TModelERPsecao.Create); 
  Self.FModel           := TModelERPsecao.Create; 
  Self.FDal             := TDalERPsecao.Create( Param, True ); 
end; 

procedure TControllerERPsecao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPsecao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPsecao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPsecao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPsecao.SetModel(  
  const Value: TModelERPsecao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPsecao.SetModelList(  
  const Value: TModelBaseList<TModelERPsecao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPsecao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPsecao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

