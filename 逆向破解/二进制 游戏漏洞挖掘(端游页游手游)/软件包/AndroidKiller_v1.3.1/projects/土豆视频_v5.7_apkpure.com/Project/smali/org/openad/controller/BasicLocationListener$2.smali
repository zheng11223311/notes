.class Lorg/openad/controller/BasicLocationListener$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openad/controller/BasicLocationListener;-><init>(Landroid/content/Context;ILorg/openad/controller/BasicLocationController;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openad/controller/BasicLocationListener;


# direct methods
.method constructor <init>(Lorg/openad/controller/BasicLocationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/controller/BasicLocationListener$2;->this$0:Lorg/openad/controller/BasicLocationListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/openad/controller/BasicLocationListener$2;->this$0:Lorg/openad/controller/BasicLocationListener;

    iget-object v1, p0, Lorg/openad/controller/BasicLocationListener$2;->this$0:Lorg/openad/controller/BasicLocationListener;

    invoke-static {v1}, Lorg/openad/controller/BasicLocationListener;->access$000(Lorg/openad/controller/BasicLocationListener;)Lorg/openad/controller/BasicLocationController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openad/controller/BasicLocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openad/controller/BasicLocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
