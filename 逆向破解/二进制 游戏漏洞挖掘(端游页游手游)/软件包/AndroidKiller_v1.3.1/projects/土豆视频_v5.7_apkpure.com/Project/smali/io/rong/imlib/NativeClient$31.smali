.class Lio/rong/imlib/NativeClient$31;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$BizAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
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
    .line 2160
    iput-object p1, p0, Lio/rong/imlib/NativeClient$31;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$31;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(II)V
    .locals 2
    .param p1, "opStatus"    # I
    .param p2, "status"    # I

    .prologue
    .line 2167
    if-nez p1, :cond_2

    .line 2169
    if-nez p2, :cond_1

    .line 2170
    iget-object v0, p0, Lio/rong/imlib/NativeClient$31;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    sget-object v1, Lio/rong/imlib/NativeClient$BlacklistStatus;->EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 2172
    iget-object v0, p0, Lio/rong/imlib/NativeClient$31;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    sget-object v1, Lio/rong/imlib/NativeClient$BlacklistStatus;->NOT_EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 2176
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/NativeClient$31;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
