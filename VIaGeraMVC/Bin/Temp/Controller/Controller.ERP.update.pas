
unit Controller.ERP.unidades_conversao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPunidadesconversao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPunidadesconversao;
    FModelList: TModelBaseList<TModelERPunidadesconversao>; 
    FModel: TModelERPunidadesconversao;
    procedure SetModel(const Value: TModelERPunidadesconversao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPunidadesconversao>);

  public 
    property Model : TModelERPunidadesconversao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPunidadesconversao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPunidadesconversao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPunidadesconversao>.Create;  
  Self.FModelList.Add(TModelERPunidadesconversao.Create); 
  Self.FModel           := TModelERPunidadesconversao.Create; 
  Self.FDal             := TDalERPunidadesconversao.Create( Param, True ); 
end; 

procedure TControllerERPunidadesconversao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPunidadesconversao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPunidadesconversao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPunidadesconversao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPunidadesconversao.SetModel(  
  const Value: TModelERPunidadesconversao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPunidadesconversao.SetModelList(  
  const Value: TModelBaseList<TModelERPunidadesconversao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPunidadesconversao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPunidadesconversao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

