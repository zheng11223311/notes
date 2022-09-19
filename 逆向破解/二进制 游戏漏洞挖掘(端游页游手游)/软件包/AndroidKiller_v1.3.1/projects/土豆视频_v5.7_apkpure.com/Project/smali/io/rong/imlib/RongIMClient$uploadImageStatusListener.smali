.class public Lio/rong/imlib/RongIMClient$uploadImageStatusListener;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "uploadImageStatusListener"
.end annotation


# instance fields
.field private callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

.field private message:Lio/rong/imlib/model/Message;

.field private pushContent:Ljava/lang/String;

.field private pushData:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method public constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
    .locals 0
    .param p2, "message"    # Lio/rong/imlib/model/Message;
    .param p3, "pushContent"    # Ljava/lang/String;
    .param p4, "pushData"    # Ljava/lang/String;
    .param p5, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    .prologue
    .line 5917
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5918
    iput-object p5, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    .line 5919
    iput-object p2, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->message:Lio/rong/imlib/model/Message;

    .line 5920
    iput-object p3, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->pushContent:Ljava/lang/String;

    .line 5921
    iput-object p4, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->pushData:Ljava/lang/String;

    .line 5922
    return-void
.end method

.method static synthetic access$2200(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/model/Message;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    .prologue
    .line 5911
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method static synthetic access$2300(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    .prologue
    .line 5911
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    return-object v0
.end method


# virtual methods
.method public error()V
    .locals 3

    .prologue
    .line 5930
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 5931
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->message:Lio/rong/imlib/model/Message;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_SEND_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5932
    :cond_0
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 5936
    new-instance v0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;

    invoke-direct {v0, p0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;-><init>(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)V

    .line 5954
    .local v0, "sendMessageCallback":Lio/rong/imlib/RongIMClient$SendMessageCallback;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->message:Lio/rong/imlib/model/Message;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->pushContent:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->pushData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    .line 5955
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 5925
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 5926
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->message:Lio/rong/imlib/model/Message;

    invoke-virtual {v0, v1, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    .line 5927
    :cond_0
    return-void
.end method
