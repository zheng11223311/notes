.class Lio/rong/imlib/RongIMClient$RegRunnable;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$RegRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$RegRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$RegRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "item":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$RegRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$RegRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v3, v2}, Lio/rong/imlib/IHandler;->registerMessageType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method
