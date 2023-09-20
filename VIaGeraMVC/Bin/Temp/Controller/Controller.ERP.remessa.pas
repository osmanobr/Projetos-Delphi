
unit Controller.ERP.registro_tef;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPregistrotef = class(TControllerBase, IController) 
  private 
    FDal : TViewERPregistrotef;
    FModelList: TModelBaseList<TModelERPregistrotef>; 
    FModel: TModelERPregistrotef;
    procedure SetModel(const Value: TModelERPregistrotef); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPregistrotef>);

  public 
    property Model : TModelERPregistrotef read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPregistrotef> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPregistrotef.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPregistrotef>.Create;  
  Self.FModelList.Add(TModelERPregistrotef.Create); 
  Self.FModel           := TModelERPregistrotef.Create; 
  Self.FDal             := TDalERPregistrotef.Create( Param, True ); 
end; 

procedure TControllerERPregistrotef.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPregistrotef.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPregistrotef.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPregistrotef.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPregistrotef.SetModel(  
  const Value: TModelERPregistrotef); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPregistrotef.SetModelList(  
  const Value: TModelBaseList<TModelERPregistrotef>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPregistrotef.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPregistrotef.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

