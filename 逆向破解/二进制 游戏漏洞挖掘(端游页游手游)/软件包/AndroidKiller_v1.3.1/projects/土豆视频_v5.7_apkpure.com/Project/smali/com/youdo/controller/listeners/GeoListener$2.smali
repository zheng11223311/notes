.class Lcom/youdo/controller/listeners/GeoListener$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/controller/listeners/GeoListener;-><init>(Landroid/content/Context;ILcom/youdo/controller/MraidLocationController;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/listeners/GeoListener;


# direct methods
.method constructor <init>(Lcom/youdo/controller/listeners/GeoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/listeners/GeoListener$2;->this$0:Lcom/youdo/controller/listeners/GeoListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener$2;->this$0:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v1, p0, Lcom/youdo/controller/listeners/GeoListener$2;->this$0:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v1, v1, Lcom/youdo/controller/listeners/GeoListener;->mMraidLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidLocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/controller/listeners/GeoListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
