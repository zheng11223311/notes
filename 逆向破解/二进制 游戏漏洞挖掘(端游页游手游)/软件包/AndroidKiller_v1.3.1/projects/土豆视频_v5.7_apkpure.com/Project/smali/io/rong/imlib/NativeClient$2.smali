.class Lio/rong/imlib/NativeClient$2;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ConnectAckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->reconnect(Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lio/rong/imlib/NativeClient$2;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$2;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 284
    if-nez p1, :cond_2

    .line 285
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$200()Lio/rong/imlib/NativeClient;

    move-result-object v0

    invoke-static {v0, p2}, Lio/rong/imlib/NativeClient;->access$302(Lio/rong/imlib/NativeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lio/rong/imlib/NativeClient$2;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lio/rong/imlib/NativeClient$2;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p2}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 290
    :cond_0
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V

    .line 292
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$ICodeListener;->onChanged(I)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/NativeClient$2;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lio/rong/imlib/NativeClient$2;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
