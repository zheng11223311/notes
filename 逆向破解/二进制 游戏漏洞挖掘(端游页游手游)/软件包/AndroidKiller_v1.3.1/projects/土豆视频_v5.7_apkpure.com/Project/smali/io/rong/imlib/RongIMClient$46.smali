.class Lio/rong/imlib/RongIMClient$46;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$userIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2621
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$46;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$46;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$46;->val$userIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2625
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 2626
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v2, :cond_0

    .line 2627
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2664
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$46;->val$name:Ljava/lang/String;

    .line 2633
    .local v1, "sub":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_2

    .line 2634
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2636
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$46;->val$userIdList:Ljava/util/List;

    new-instance v4, Lio/rong/imlib/RongIMClient$46$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$46$1;-><init>(Lio/rong/imlib/RongIMClient$46;)V

    invoke-interface {v2, v1, v3, v4}, Lio/rong/imlib/IHandler;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2660
    .end local v1    # "sub":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2661
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v2, :cond_0

    .line 2662
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
