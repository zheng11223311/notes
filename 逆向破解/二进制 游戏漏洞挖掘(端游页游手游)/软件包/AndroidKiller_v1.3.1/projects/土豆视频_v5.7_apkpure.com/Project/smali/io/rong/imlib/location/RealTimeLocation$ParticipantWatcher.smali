.class Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
.super Ljava/lang/Object;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantWatcher"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method public constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 686
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p2, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->id:Ljava/lang/String;

    .line 688
    new-instance v0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher$1;-><init>(Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->runnable:Ljava/lang/Runnable;

    .line 697
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 700
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$100(Lio/rong/imlib/location/RealTimeLocation;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 709
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$100(Lio/rong/imlib/location/RealTimeLocation;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    return-void
.end method
