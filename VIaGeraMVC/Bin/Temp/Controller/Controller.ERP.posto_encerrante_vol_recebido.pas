
unit Controller.ERP.posto_encerrante_itens;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpostoencerranteitens = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpostoencerranteitens;
    FModelList: TModelBaseList<TModelERPpostoencerranteitens>; 
    FModel: TModelERPpostoencerranteitens;
    procedure SetModel(const Value: TModelERPpostoencerranteitens); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpostoencerranteitens>);

  public 
    property Model : TModelERPpostoencerranteitens read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpostoencerranteitens> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpostoencerranteitens.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpostoencerranteitens>.Create;  
  Self.FModelList.Add(TModelERPpostoencerranteitens.Create); 
  Self.FModel           := TModelERPpostoencerranteitens.Create; 
  Self.FDal             := TDalERPpostoencerranteitens.Create( Param, True ); 
end; 

procedure TControllerERPpostoencerranteitens.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpostoencerranteitens.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpostoencerranteitens.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpostoencerranteitens.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpostoencerranteitens.SetModel(  
  const Value: TModelERPpostoencerranteitens); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpostoencerranteitens.SetModelList(  
  const Value: TModelBaseList<TModelERPpostoencerranteitens>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpostoencerranteitens.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpostoencerranteitens.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

