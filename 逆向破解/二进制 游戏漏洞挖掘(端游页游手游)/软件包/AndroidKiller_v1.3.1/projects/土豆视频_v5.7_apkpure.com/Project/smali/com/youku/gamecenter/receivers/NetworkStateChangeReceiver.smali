.class public Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;,
        Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNoNetworkListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mNoNetworkListeners:Ljava/util/List;

    .line 20
    return-void
.end method

.method private isNetWorkAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private notfiyNetworkAvailable()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;

    .line 43
    .local v1, "listener":Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
    invoke-interface {v1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;->onNetworkAvailable()V

    goto :goto_0

    .line 45
    .end local v1    # "listener":Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
    :cond_0
    return-void
.end method

.method private notifyNetworkUnavailable()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mNoNetworkListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;

    .line 66
    .local v1, "listener":Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;
    invoke-interface {v1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;->onNetworkUnavailable()V

    goto :goto_0

    .line 68
    .end local v1    # "listener":Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public addNoNetworkListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mNoNetworkListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->notfiyNetworkAvailable()V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->notifyNetworkUnavailable()V

    goto :goto_0
.end method

.method public removeListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public removeNoNetworkListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->mNoNetworkListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
