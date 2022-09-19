.class final Lio/rong/imlib/NativeClient$23;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 1845
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$100()Lio/rong/imlib/NativeClient$ICodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$ICodeListener;->onChanged(I)V

    .line 1847
    :cond_0
    return-void
.end method
