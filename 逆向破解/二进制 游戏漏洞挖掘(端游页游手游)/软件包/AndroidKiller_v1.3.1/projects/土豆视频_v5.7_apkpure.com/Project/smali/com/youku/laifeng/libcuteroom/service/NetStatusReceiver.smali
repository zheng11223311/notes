.class public Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;
    }
.end annotation


# static fields
.field public static final GPRS:I = 0x0

.field public static final NONE:I = -0x1

.field public static final WIFI:I = 0x1

.field public static final netACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .line 18
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 24
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 25
    .local v0, "gprs":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 26
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    invoke-interface {v3, v5}, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;->onNetworkListener(I)V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    invoke-interface {v3, v4}, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;->onNetworkListener(I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;->onNetworkListener(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->mL:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .line 39
    return-void
.end method
