.class Lio/rong/imlib/ReConnectService$1;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "ReConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/ReConnectService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/ReConnectService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/rong/imlib/ReConnectService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lio/rong/imlib/ReConnectService$1;->this$0:Lio/rong/imlib/ReConnectService;

    iput-object p2, p0, Lio/rong/imlib/ReConnectService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imlib/ReConnectService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lio/rong/imlib/ConnectChangeReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/ReConnectService$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/imlib/ReConnectService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lio/rong/imlib/ConnectChangeReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 31
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/rong/imlib/ReConnectService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lio/rong/imlib/ConnectChangeReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 41
    return-void
.end method
