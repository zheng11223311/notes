.class Lio/rong/imlib/RongIMClient$Callback$1;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$Callback;->onCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient$Callback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$Callback;)V
    .locals 0

    .prologue
    .line 5574
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$Callback$1;->this$0:Lio/rong/imlib/RongIMClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5577
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$Callback$1;->this$0:Lio/rong/imlib/RongIMClient$Callback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$Callback;->onSuccess()V

    .line 5578
    return-void
.end method
