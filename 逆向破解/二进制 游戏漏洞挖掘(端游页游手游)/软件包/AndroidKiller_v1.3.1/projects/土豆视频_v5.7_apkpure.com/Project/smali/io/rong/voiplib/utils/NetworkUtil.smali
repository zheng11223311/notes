.class public Lio/rong/voiplib/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/voiplib/utils/NetworkUtil$DoEventByConnectivityState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static isConnectivityAvailable(Landroid/content/Context;Lio/rong/voiplib/utils/NetworkUtil$DoEventByConnectivityState;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "doEvent"    # Lio/rong/voiplib/utils/NetworkUtil$DoEventByConnectivityState;

    .prologue
    const/4 v6, 0x0

    .line 14
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 15
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 16
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 17
    const-string/jumbo v4, "\u5f53\u524d\u7684\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 20
    .local v0, "available":Z
    if-eqz v0, :cond_3

    .line 21
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 23
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_2

    .line 24
    const-string/jumbo v4, "\u901a\u77e5"

    const-string v5, "=========WIFI\u7f51\u7edc\u5df2\u8fde\u63a5================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/rong/voiplib/utils/NetworkUtil$DoEventByConnectivityState;->doCall()V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 31
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_0

    .line 32
    const-string/jumbo v4, "\u901a\u77e5"

    const-string v5, "===========GPRS\u7f51\u7edc\u5df2\u8fde\u63a5================"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/rong/voiplib/utils/NetworkUtil$DoEventByConnectivityState;->doWarnCall()V

    goto :goto_0

    .line 36
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_3
    const-string/jumbo v4, "\u901a\u77e5"

    const-string/jumbo v5, "\u5f53\u524d\u7684\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v4, "\u5f53\u524d\u7684\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
