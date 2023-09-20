
unit Controller.ERP.di_adicao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdiadicao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdiadicao;
    FModelList: TModelBaseList<TModelERPdiadicao>; 
    FModel: TModelERPdiadicao;
    procedure SetModel(const Value: TModelERPdiadicao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdiadicao>);

  public 
    property Model : TModelERPdiadicao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdiadicao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdiadicao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdiadicao>.Create;  
  Self.FModelList.Add(TModelERPdiadicao.Create); 
  Self.FModel           := TModelERPdiadicao.Create; 
  Self.FDal             := TDalERPdiadicao.Create( Param, True ); 
end; 

procedure TControllerERPdiadicao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdiadicao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdiadicao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdiadicao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdiadicao.SetModel(  
  const Value: TModelERPdiadicao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdiadicao.SetModelList(  
  const Value: TModelBaseList<TModelERPdiadicao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdiadicao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdiadicao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

