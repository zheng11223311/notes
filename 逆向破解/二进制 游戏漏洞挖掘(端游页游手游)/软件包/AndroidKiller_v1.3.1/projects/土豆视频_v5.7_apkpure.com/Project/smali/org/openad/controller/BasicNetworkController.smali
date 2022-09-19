.class public Lorg/openad/controller/BasicNetworkController;
.super Lorg/openad/controller/BasicController;


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicNetworkController"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkListenerCount:I

.field private mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openad/controller/BasicController;-><init>(Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getNetwork()Lorg/openad/constants/IOpenAdContants$NetworkType;
    .locals 1

    iget-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getNetworkTypeEnum(Landroid/net/ConnectivityManager;)Lorg/openad/constants/IOpenAdContants$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public onConnectionChanged()V
    .locals 3

    invoke-virtual {p0}, Lorg/openad/controller/BasicNetworkController;->getNetwork()Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/events/OpenAdNetworkEvent;

    const-string v1, "NetworkChanged"

    invoke-virtual {p0}, Lorg/openad/controller/BasicNetworkController;->getNetwork()Lorg/openad/constants/IOpenAdContants$NetworkType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openad/events/OpenAdNetworkEvent;-><init>(Ljava/lang/String;Lorg/openad/constants/IOpenAdContants$NetworkType;)V

    invoke-virtual {p0, v0}, Lorg/openad/controller/BasicNetworkController;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public setNetworkBroadcastReceiver(Lorg/openad/controller/BasicNetworkBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    iget v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lorg/openad/controller/BasicNetworkBroadcastReceiver;-><init>(Lorg/openad/controller/BasicNetworkController;)V

    invoke-virtual {p0, v0}, Lorg/openad/controller/BasicNetworkController;->setNetworkBroadcastReceiver(Lorg/openad/controller/BasicNetworkBroadcastReceiver;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    iget-object v0, p0, Lorg/openad/controller/BasicController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    iget-object v2, p0, Lorg/openad/controller/BasicNetworkController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    :try_start_0
    iget-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    iget v0, p0, Lorg/openad/controller/BasicNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openad/controller/BasicNetworkController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lorg/openad/controller/BasicNetworkController;->mReceiver:Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    iput-object v2, p0, Lorg/openad/controller/BasicNetworkController;->mFilter:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method
