
unit Controller.ERP.posto_encerrante_vol_recebido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpostoencerrantevolrecebido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpostoencerrantevolrecebido;
    FModelList: TModelBaseList<TModelERPpostoencerrantevolrecebido>; 
    FModel: TModelERPpostoencerrantevolrecebido;
    procedure SetModel(const Value: TModelERPpostoencerrantevolrecebido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpostoencerrantevolrecebido>);

  public 
    property Model : TModelERPpostoencerrantevolrecebido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpostoencerrantevolrecebido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpostoencerrantevolrecebido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpostoencerrantevolrecebido>.Create;  
  Self.FModelList.Add(TModelERPpostoencerrantevolrecebido.Create); 
  Self.FModel           := TModelERPpostoencerrantevolrecebido.Create; 
  Self.FDal             := TDalERPpostoencerrantevolrecebido.Create( Param, True ); 
end; 

procedure TControllerERPpostoencerrantevolrecebido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpostoencerrantevolrecebido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpostoencerrantevolrecebido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpostoencerrantevolrecebido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpostoencerrantevolrecebido.SetModel(  
  const Value: TModelERPpostoencerrantevolrecebido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpostoencerrantevolrecebido.SetModelList(  
  const Value: TModelBaseList<TModelERPpostoencerrantevolrecebido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpostoencerrantevolrecebido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpostoencerrantevolrecebido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

