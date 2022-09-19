.class Lcom/tudou/adapter/MessageAdapter$1;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/MessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/MessageAdapter;

.field final synthetic val$priMsg:Lcom/youku/vo/Message;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/MessageAdapter;Lcom/youku/vo/Message;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const-string v2, "\u7f16\u8f91\u5220\u9664\u70b9\u51fb"

    const-string v3, "\u7f16\u8f91\u5220\u9664\u70b9\u51fb"

    const-string v4, "MyChannle|Message|EditDelete"

    invoke-static {v2, v3, v4}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "selfId":Ljava/lang/String;
    const-string v0, ""

    .line 162
    .local v0, "otherId":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    iget-object v2, v2, Lcom/youku/vo/Message;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    iget-object v0, v2, Lcom/youku/vo/Message;->user2Id:Ljava/lang/String;

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    iget-object v2, v2, Lcom/tudou/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 167
    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter$1;->this$0:Lcom/tudou/adapter/MessageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/MessageAdapter;->access$000(Lcom/tudou/adapter/MessageAdapter;)Lcom/youku/util/MessageManager;

    move-result-object v2

    new-instance v3, Lcom/tudou/adapter/MessageAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/MessageAdapter$1$1;-><init>(Lcom/tudou/adapter/MessageAdapter$1;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/youku/util/MessageManager;->deleteMessages(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter$1;->val$priMsg:Lcom/youku/vo/Message;

    iget-object v0, v2, Lcom/youku/vo/Message;->userId:Ljava/lang/String;

    goto :goto_1
.end method
