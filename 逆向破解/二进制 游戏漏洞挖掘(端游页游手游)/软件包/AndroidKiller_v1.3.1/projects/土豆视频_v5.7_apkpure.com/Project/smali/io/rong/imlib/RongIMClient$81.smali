.class Lio/rong/imlib/RongIMClient$81;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$keywords:Ljava/lang/String;

.field final synthetic val$searchType:Lio/rong/imlib/RongIMClient$SearchType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SearchType;)V
    .locals 0

    .prologue
    .line 4567
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$81;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$81;->val$keywords:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$81;->val$searchType:Lio/rong/imlib/RongIMClient$SearchType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4570
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$81;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4571
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 4572
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4599
    :cond_0
    :goto_0
    return-void

    .line 4578
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$81;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$81;->val$keywords:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$81;->val$searchType:Lio/rong/imlib/RongIMClient$SearchType;

    invoke-virtual {v4}, Lio/rong/imlib/RongIMClient$SearchType;->getValue()I

    move-result v4

    new-instance v5, Lio/rong/imlib/RongIMClient$81$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$81$1;-><init>(Lio/rong/imlib/RongIMClient$81;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4596
    :catch_0
    move-exception v0

    .line 4597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
