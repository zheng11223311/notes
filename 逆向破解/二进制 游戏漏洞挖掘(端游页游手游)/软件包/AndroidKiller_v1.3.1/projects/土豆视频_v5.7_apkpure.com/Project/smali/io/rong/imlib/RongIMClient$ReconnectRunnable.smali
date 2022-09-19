.class Lio/rong/imlib/RongIMClient$ReconnectRunnable;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method public constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$ReconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    const-string v1, "ReconnectRunnable"

    const-string v2, "do reconnect!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-class v2, Lio/rong/imlib/ConnectChangeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$ReconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$008(Lio/rong/imlib/RongIMClient;)I

    .line 273
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$ReconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 274
    return-void
.end method
