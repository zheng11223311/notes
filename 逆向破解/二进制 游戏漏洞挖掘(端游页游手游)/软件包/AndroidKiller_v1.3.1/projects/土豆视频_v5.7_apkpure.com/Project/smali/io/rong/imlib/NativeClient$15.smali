.class Lio/rong/imlib/NativeClient$15;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILjava/lang/String;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lio/rong/imlib/NativeClient$15;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1524
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1526
    :cond_0
    return-void
.end method

.method public OnError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1518
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onError(I)V

    .line 1520
    :cond_0
    return-void
.end method

.method public OnProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1511
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lio/rong/imlib/NativeClient$15;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onProgress(I)V

    .line 1514
    :cond_0
    return-void
.end method
