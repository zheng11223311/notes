.class Lio/rong/imlib/RongIMClient$61;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

.field final synthetic val$conversation:Lio/rong/imlib/model/Conversation;

.field final synthetic val$finalUri:Landroid/net/Uri;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$messageContent:Lio/rong/imlib/model/MessageContent;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$UploadMediaCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/model/Conversation;Landroid/net/Uri;Lio/rong/imlib/model/MessageContent;)V
    .locals 0

    .prologue
    .line 3436
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$61;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$61;->val$conversation:Lio/rong/imlib/model/Conversation;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$61;->val$finalUri:Landroid/net/Uri;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$61;->val$messageContent:Lio/rong/imlib/model/MessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3439
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 3440
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_0

    .line 3441
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3480
    :cond_0
    :goto_0
    return-void

    .line 3447
    :cond_1
    :try_start_0
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$61;->val$conversation:Lio/rong/imlib/model/Conversation;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$61;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$61$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$61$1;-><init>(Lio/rong/imlib/RongIMClient$61;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->uploadMedia(Lio/rong/imlib/model/Conversation;Ljava/lang/String;Lio/rong/imlib/IUploadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3475
    :catch_0
    move-exception v0

    .line 3476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3477
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_0

    .line 3478
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
