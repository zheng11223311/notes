.class public Lcom/corncop/virgo/VirgoWakeLock;
.super Ljava/lang/Object;
.source "VirgoWakeLock.java"


# static fields
.field public static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    sget-object v1, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 18
    :goto_0
    return-void

    .line 15
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    move-object v0, v1

    check-cast v0, Landroid/os/PowerManager;

    .line 16
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "com.cnblogs.download.OfflineService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    sget-object v1, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public static releaseWakeLock()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/corncop/virgo/VirgoWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    :cond_0
    return-void
.end method
