.class Lorg/openad/controller/BasicLocationController$LocationResultListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/controller/BasicLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationResultListener"
.end annotation


# instance fields
.field public allowLocateFailReporting:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/openad/controller/BasicLocationController;


# direct methods
.method public constructor <init>(Lorg/openad/controller/BasicLocationController;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->this$0:Lorg/openad/controller/BasicLocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PositioningSuccess"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->this$0:Lorg/openad/controller/BasicLocationController;

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Lorg/openad/controller/BasicLocationController;->success(Landroid/location/Location;)V

    :cond_0
    const-string v0, "PositioningFault"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->this$0:Lorg/openad/controller/BasicLocationController;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationController;->fail()V

    :cond_1
    return-void
.end method
