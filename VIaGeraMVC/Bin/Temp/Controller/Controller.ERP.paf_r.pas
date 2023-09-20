
unit Controller.ERP.paf_r;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpafr = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpafr;
    FModelList: TModelBaseList<TModelERPpafr>; 
    FModel: TModelERPpafr;
    procedure SetModel(const Value: TModelERPpafr); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpafr>);

  public 
    property Model : TModelERPpafr read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpafr> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpafr.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpafr>.Create;  
  Self.FModelList.Add(TModelERPpafr.Create); 
  Self.FModel           := TModelERPpafr.Create; 
  Self.FDal             := TDalERPpafr.Create( Param, True ); 
end; 

procedure TControllerERPpafr.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpafr.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpafr.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpafr.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpafr.SetModel(  
  const Value: TModelERPpafr); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpafr.SetModelList(  
  const Value: TModelBaseList<TModelERPpafr>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpafr.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpafr.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

