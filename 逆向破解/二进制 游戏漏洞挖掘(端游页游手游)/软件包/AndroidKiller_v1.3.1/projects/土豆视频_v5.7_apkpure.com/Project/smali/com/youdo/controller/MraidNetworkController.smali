.class public Lcom/youdo/controller/MraidNetworkController;
.super Lcom/youdo/controller/MraidController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/controller/MraidNetworkController$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MraidNetworkController"


# instance fields
.field private mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkListenerCount:I


# direct methods
.method public constructor <init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/youdo/controller/MraidController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const-string/jumbo v0, "unknown"

    if-nez v1, :cond_1

    const-string v0, "offline"

    :cond_0
    :goto_0
    const-string v1, "MraidNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    sget-object v2, Lcom/youdo/controller/MraidNetworkController$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "cell"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "offline"

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ network: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/controller/MraidNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidNetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/controller/MraidNetworkController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    iget v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;-><init>(Lcom/youdo/controller/MraidNetworkController;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    iget-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidNetworkController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/youdo/controller/MraidNetworkController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    :try_start_0
    iget-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidNetworkController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

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

    iget v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    iget v0, p0, Lcom/youdo/controller/MraidNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidNetworkController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidNetworkController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/youdo/controller/MraidNetworkController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;

    iput-object v2, p0, Lcom/youdo/controller/MraidNetworkController;->mFilter:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method
