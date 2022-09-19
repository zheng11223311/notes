.class Lcom/tudou/push/StartActivityService$1;
.super Landroid/os/Handler;
.source "StartActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/push/StartActivityService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/push/StartActivityService;

.field final synthetic val$msg:Lcom/tudou/push/PushMsg;


# direct methods
.method constructor <init>(Lcom/tudou/push/StartActivityService;Landroid/os/Looper;Lcom/tudou/push/PushMsg;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tudou/push/StartActivityService$1;->this$0:Lcom/tudou/push/StartActivityService;

    iput-object p3, p0, Lcom/tudou/push/StartActivityService$1;->val$msg:Lcom/tudou/push/PushMsg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    const-string v0, "Push_StartActivityService"

    const-string v1, "TYPE_GAME_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/tudou/push/StartActivityService$1;->val$msg:Lcom/tudou/push/PushMsg;

    invoke-static {v0}, Lcom/tudou/push/StartActivityService;->startDownloadGame(Lcom/tudou/push/PushMsg;)V

    .line 115
    return-void
.end method
