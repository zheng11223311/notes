.class Lio/rong/imlib/LibHandlerStub$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IStringCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$1;->val$callback:Lio/rong/imlib/IStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/common/WakeLockUtils;->cancelHeartbeat(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->val$callback:Lio/rong/imlib/IStringCallback;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$1$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$1$2;-><init>(Lio/rong/imlib/LibHandlerStub$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->val$callback:Lio/rong/imlib/IStringCallback;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p1, v0, Lio/rong/imlib/LibHandlerStub;->mCurrentUserId:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/common/WakeLockUtils;->startNextHeartbeat(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$1;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$1$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$1$1;-><init>(Lio/rong/imlib/LibHandlerStub$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
