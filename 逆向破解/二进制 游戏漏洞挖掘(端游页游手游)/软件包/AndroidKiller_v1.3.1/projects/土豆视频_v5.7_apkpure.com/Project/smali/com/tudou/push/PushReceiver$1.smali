.class Lcom/tudou/push/PushReceiver$1;
.super Landroid/os/Handler;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/push/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/push/PushReceiver;


# direct methods
.method constructor <init>(Lcom/tudou/push/PushReceiver;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tudou/push/PushReceiver$1;->this$0:Lcom/tudou/push/PushReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "mid":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/http/URLContainer;->getPushFeedbackForReceiveURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-static {v1, v2}, Lcom/tudou/push/PushReceiver;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method
