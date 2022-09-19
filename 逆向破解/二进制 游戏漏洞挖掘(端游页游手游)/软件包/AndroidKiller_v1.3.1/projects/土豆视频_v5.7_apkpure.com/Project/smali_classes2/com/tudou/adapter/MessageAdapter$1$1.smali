.class Lcom/tudou/adapter/MessageAdapter$1$1;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/MessageAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/MessageAdapter$1;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/MessageAdapter$1;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 182
    const-string v0, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 173
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/MessageAdapter;->access$000(Lcom/tudou/adapter/MessageAdapter;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v1, v1, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v1, v1, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter$1$1;->this$1:Lcom/tudou/adapter/MessageAdapter$1;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/MessageAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    :cond_0
    return-void
.end method
