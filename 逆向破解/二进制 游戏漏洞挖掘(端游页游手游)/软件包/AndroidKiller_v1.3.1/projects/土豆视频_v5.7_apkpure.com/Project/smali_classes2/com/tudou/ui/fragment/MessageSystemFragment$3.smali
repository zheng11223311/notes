.class Lcom/tudou/ui/fragment/MessageSystemFragment$3;
.super Ljava/lang/Object;
.source "MessageSystemFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "MessageSystemFragment"

    const-string v1, "onFinish onFailed"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$500(Lcom/tudou/ui/fragment/MessageSystemFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "MessageSystemFragment"

    const-string v1, "onFinish onSuccess"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$500(Lcom/tudou/ui/fragment/MessageSystemFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 151
    return-void
.end method
