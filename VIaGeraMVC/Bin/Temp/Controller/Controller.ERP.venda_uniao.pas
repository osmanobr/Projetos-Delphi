
unit Controller.ERP.venda_servico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaservico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaservico;
    FModelList: TModelBaseList<TModelERPvendaservico>; 
    FModel: TModelERPvendaservico;
    procedure SetModel(const Value: TModelERPvendaservico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaservico>);

  public 
    property Model : TModelERPvendaservico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaservico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaservico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaservico>.Create;  
  Self.FModelList.Add(TModelERPvendaservico.Create); 
  Self.FModel           := TModelERPvendaservico.Create; 
  Self.FDal             := TDalERPvendaservico.Create( Param, True ); 
end; 

procedure TControllerERPvendaservico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaservico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaservico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaservico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaservico.SetModel(  
  const Value: TModelERPvendaservico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaservico.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaservico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaservico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaservico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

