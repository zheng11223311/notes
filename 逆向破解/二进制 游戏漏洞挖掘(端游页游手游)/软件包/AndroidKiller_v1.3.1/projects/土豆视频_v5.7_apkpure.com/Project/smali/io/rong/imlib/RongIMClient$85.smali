.class Lio/rong/imlib/RongIMClient$85;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$publicServiceId:Ljava/lang/String;

.field final synthetic val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V
    .locals 0

    .prologue
    .line 4799
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$85;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$85;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$85;->val$publicServiceId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$85;->val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4802
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$85;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4803
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$85;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 4804
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$85;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4831
    :cond_0
    :goto_0
    return-void

    .line 4809
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$85;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$85;->val$publicServiceId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$85;->val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v3

    new-instance v4, Lio/rong/imlib/RongIMClient$85$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$85$1;-><init>(Lio/rong/imlib/RongIMClient$85;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4828
    :catch_0
    move-exception v0

    .line 4829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
