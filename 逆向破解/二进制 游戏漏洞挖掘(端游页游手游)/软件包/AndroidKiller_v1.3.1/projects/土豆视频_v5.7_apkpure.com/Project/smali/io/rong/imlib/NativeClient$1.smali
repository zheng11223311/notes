.class final Lio/rong/imlib/NativeClient$1;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ConnectAckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 240
    if-nez p1, :cond_2

    .line 241
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V

    .line 242
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$ICodeListener;->onChanged(I)V

    .line 244
    :cond_0
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$200()Lio/rong/imlib/NativeClient;

    move-result-object v0

    invoke-static {v0, p2}, Lio/rong/imlib/NativeClient;->access$302(Lio/rong/imlib/NativeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p2}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$200()Lio/rong/imlib/NativeClient;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-static {}, Lio/rong/imlib/NativeClient;->access$200()Lio/rong/imlib/NativeClient;

    move-result-object v2

    invoke-static {v2}, Lio/rong/imlib/NativeClient;->access$400(Lio/rong/imlib/NativeClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/NativeObject;->GetUserIdByToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/NativeClient;->access$302(Lio/rong/imlib/NativeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
