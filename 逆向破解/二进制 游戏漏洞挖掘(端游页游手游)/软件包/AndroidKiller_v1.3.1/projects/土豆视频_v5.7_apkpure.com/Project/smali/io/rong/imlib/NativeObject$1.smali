.class Lio/rong/imlib/NativeObject$1;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$EnvironmentChangeNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeObject;->ping(Lio/rong/imlib/NativeObject$PingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeObject;

.field final synthetic val$callback:Lio/rong/imlib/NativeObject$PingCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeObject;Lio/rong/imlib/NativeObject$PingCallback;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lio/rong/imlib/NativeObject$1;->this$0:Lio/rong/imlib/NativeObject;

    iput-object p2, p0, Lio/rong/imlib/NativeObject$1;->val$callback:Lio/rong/imlib/NativeObject$PingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Complete(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    iget-object v0, p0, Lio/rong/imlib/NativeObject$1;->val$callback:Lio/rong/imlib/NativeObject$PingCallback;

    invoke-interface {v0}, Lio/rong/imlib/NativeObject$PingCallback;->onSuccess()V

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeObject$1;->val$callback:Lio/rong/imlib/NativeObject$PingCallback;

    invoke-interface {v0}, Lio/rong/imlib/NativeObject$PingCallback;->onError()V

    goto :goto_0
.end method
