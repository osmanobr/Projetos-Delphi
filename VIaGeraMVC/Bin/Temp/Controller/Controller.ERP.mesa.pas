
unit Controller.ERP.mdfe_xml;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmdfexml = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmdfexml;
    FModelList: TModelBaseList<TModelERPmdfexml>; 
    FModel: TModelERPmdfexml;
    procedure SetModel(const Value: TModelERPmdfexml); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmdfexml>);

  public 
    property Model : TModelERPmdfexml read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmdfexml> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmdfexml.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmdfexml>.Create;  
  Self.FModelList.Add(TModelERPmdfexml.Create); 
  Self.FModel           := TModelERPmdfexml.Create; 
  Self.FDal             := TDalERPmdfexml.Create( Param, True ); 
end; 

procedure TControllerERPmdfexml.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmdfexml.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmdfexml.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmdfexml.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmdfexml.SetModel(  
  const Value: TModelERPmdfexml); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmdfexml.SetModelList(  
  const Value: TModelBaseList<TModelERPmdfexml>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmdfexml.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmdfexml.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

