
unit Controller.ERP.parcela_chequerecebido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPparcelachequerecebido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPparcelachequerecebido;
    FModelList: TModelBaseList<TModelERPparcelachequerecebido>; 
    FModel: TModelERPparcelachequerecebido;
    procedure SetModel(const Value: TModelERPparcelachequerecebido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPparcelachequerecebido>);

  public 
    property Model : TModelERPparcelachequerecebido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPparcelachequerecebido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPparcelachequerecebido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPparcelachequerecebido>.Create;  
  Self.FModelList.Add(TModelERPparcelachequerecebido.Create); 
  Self.FModel           := TModelERPparcelachequerecebido.Create; 
  Self.FDal             := TDalERPparcelachequerecebido.Create( Param, True ); 
end; 

procedure TControllerERPparcelachequerecebido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPparcelachequerecebido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPparcelachequerecebido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPparcelachequerecebido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPparcelachequerecebido.SetModel(  
  const Value: TModelERPparcelachequerecebido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPparcelachequerecebido.SetModelList(  
  const Value: TModelBaseList<TModelERPparcelachequerecebido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPparcelachequerecebido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPparcelachequerecebido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

