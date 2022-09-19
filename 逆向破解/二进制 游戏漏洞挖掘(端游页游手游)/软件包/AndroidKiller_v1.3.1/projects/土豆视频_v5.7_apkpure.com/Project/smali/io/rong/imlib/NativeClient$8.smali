.class Lio/rong/imlib/NativeClient$8;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$PublishAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/NativeClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$OperationCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lio/rong/imlib/NativeClient$8;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$8;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;J)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msgUId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 1011
    iget-object v0, p0, Lio/rong/imlib/NativeClient$8;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1014
    :cond_0
    if-nez p1, :cond_1

    .line 1015
    iget-object v0, p0, Lio/rong/imlib/NativeClient$8;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-interface {v0}, Lio/rong/imlib/NativeClient$OperationCallback;->onSuccess()V

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$8;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$OperationCallback;->onError(I)V

    goto :goto_0
.end method
