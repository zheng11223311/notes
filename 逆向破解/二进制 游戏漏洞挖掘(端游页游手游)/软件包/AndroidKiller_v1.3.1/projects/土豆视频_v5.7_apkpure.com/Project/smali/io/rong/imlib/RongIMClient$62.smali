.class Lio/rong/imlib/RongIMClient$62;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

.field final synthetic val$conversation:Lio/rong/imlib/model/Conversation;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$mediaType:Lio/rong/imlib/RongIMClient$MediaType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;Lio/rong/imlib/model/Conversation;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3527
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$62;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$62;->val$conversation:Lio/rong/imlib/model/Conversation;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$62;->val$mediaType:Lio/rong/imlib/RongIMClient$MediaType;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$62;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3532
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$62;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 3533
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v1, :cond_0

    .line 3534
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3569
    :cond_0
    :goto_0
    return-void

    .line 3540
    :cond_1
    :try_start_0
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$62;->val$conversation:Lio/rong/imlib/model/Conversation;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$62;->val$mediaType:Lio/rong/imlib/RongIMClient$MediaType;

    invoke-virtual {v3}, Lio/rong/imlib/RongIMClient$MediaType;->getValue()I

    move-result v3

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$62;->val$imageUrl:Ljava/lang/String;

    new-instance v5, Lio/rong/imlib/RongIMClient$62$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$62$1;-><init>(Lio/rong/imlib/RongIMClient$62;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3563
    :catch_0
    move-exception v0

    .line 3564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3566
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v1, :cond_0

    .line 3567
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
