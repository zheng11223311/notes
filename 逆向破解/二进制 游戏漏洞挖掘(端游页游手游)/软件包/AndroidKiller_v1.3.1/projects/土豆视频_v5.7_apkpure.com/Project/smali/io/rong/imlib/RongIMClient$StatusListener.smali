.class Lio/rong/imlib/RongIMClient$StatusListener;
.super Lio/rong/imlib/IConnectionStatusListener$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0

    .prologue
    .line 5154
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Lio/rong/imlib/IConnectionStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5157
    const-string v0, "onChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnectionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 5163
    :goto_0
    return-void

    .line 5162
    :cond_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1300()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    goto :goto_0
.end method

.method onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 10
    .param p1, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    const/4 v8, 0x0

    .line 5167
    const-string v6, "onStatusChange"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mConnectionStatus = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v7, v7, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", status = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", listener = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1500()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1500()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v6, v5}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    sget-object v5, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5171
    const-string v5, "onStatusChange"

    const-string v6, "Token is null!"

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    :goto_1
    return-void

    .line 5167
    :cond_0
    const-string v5, "null"

    goto :goto_0

    .line 5175
    :cond_1
    if-nez p1, :cond_2

    .line 5176
    const-string v5, "onStatusChange"

    const-string v6, "Unknown error!"

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5180
    :cond_2
    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5181
    sget-object v5, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v5, v8}, Lio/rong/imlib/RongIMClient;->access$402(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 5184
    :cond_3
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1500()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v5, p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5187
    :cond_4
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1500()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    move-result-object v5

    invoke-interface {v5, p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener;->onChanged(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 5190
    :cond_5
    const-string v5, "JoinChatRoom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v7}, Lio/rong/imlib/RongIMClient;->access$1600(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5192
    const-string v5, "ChatRoom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v7}, Lio/rong/imlib/RongIMClient;->access$1600(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$1600(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 5194
    .local v3, "list":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$1600(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 5195
    sget-object v6, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    aget-object v5, v3, v1

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v8}, Lio/rong/imlib/RongIMClient;->access$1700(Lio/rong/imlib/RongIMClient;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 5194
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5198
    .end local v1    # "i":I
    .end local v3    # "list":[Ljava/lang/Object;
    :cond_6
    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5199
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5200
    const-string v5, "onStatusChange"

    const-string v6, "CONNECTED, remove mReconnectRunnable!"

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    sget-object v5, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v6}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5202
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5, v8}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 5206
    :cond_7
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 5207
    const-string v5, "onStatusChange"

    const-string v6, "Reconnect runnable enqueue!"

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5211
    :cond_8
    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$000(Lio/rong/imlib/RongIMClient;)I

    move-result v5

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1800()I

    move-result v6

    if-ge v5, v6, :cond_a

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v5, p1, :cond_a

    .line 5215
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5217
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 5218
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5219
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v6, Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {v6, v7}, Lio/rong/imlib/RongIMClient$ReconnectRunnable;-><init>(Lio/rong/imlib/RongIMClient;)V

    invoke-static {v5, v6}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 5221
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1900()I

    move-result v2

    .line 5222
    .local v2, "interval":I
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$000(Lio/rong/imlib/RongIMClient;)I

    move-result v5

    iget-object v6, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v6}, Lio/rong/imlib/RongIMClient;->access$2000(Lio/rong/imlib/RongIMClient;)[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 5223
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$2000(Lio/rong/imlib/RongIMClient;)[I

    move-result-object v5

    iget-object v6, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v6}, Lio/rong/imlib/RongIMClient;->access$000(Lio/rong/imlib/RongIMClient;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1900()I

    move-result v6

    mul-int v2, v5, v6

    .line 5225
    :cond_9
    const-string v5, "onStatusChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v7}, Lio/rong/imlib/RongIMClient;->access$000(Lio/rong/imlib/RongIMClient;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " counts, will reconnect."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    sget-object v5, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v6}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v6

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5230
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "interval":I
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    iget-object v5, p0, Lio/rong/imlib/RongIMClient$StatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p1, v5, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    goto/16 :goto_1
.end method
