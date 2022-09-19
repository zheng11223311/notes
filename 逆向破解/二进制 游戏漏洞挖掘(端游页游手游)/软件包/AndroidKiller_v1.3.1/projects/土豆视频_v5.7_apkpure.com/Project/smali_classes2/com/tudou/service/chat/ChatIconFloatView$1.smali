.class Lcom/tudou/service/chat/ChatIconFloatView$1;
.super Ljava/lang/Object;
.source "ChatIconFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/chat/ChatIconFloatView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ChatIconFloatView;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ChatIconFloatView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v1}, Lcom/tudou/service/chat/ChatIconFloatView;->access$000(Lcom/tudou/service/chat/ChatIconFloatView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "button_click"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    iget-object v1, v1, Lcom/tudou/service/chat/ChatIconFloatView;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v1}, Lcom/tudou/service/chat/ChatIconFloatView;->access$000(Lcom/tudou/service/chat/ChatIconFloatView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatIconFloatView;->access$100(Lcom/tudou/service/chat/ChatIconFloatView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/ChatDialogInfo;->goDetailActivity(Landroid/content/Context;)V

    .line 65
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v1}, Lcom/tudou/service/chat/ChatIconFloatView;->access$200(Lcom/tudou/service/chat/ChatIconFloatView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v1}, Lcom/tudou/service/chat/ChatIconFloatView;->access$200(Lcom/tudou/service/chat/ChatIconFloatView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    const-string v1, "\u6ca1\u7ea2\u70b9"

    :goto_2
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "t1.chat_join.floating "

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 69
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    iget-object v1, v1, Lcom/tudou/service/chat/ChatIconFloatView;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v2}, Lcom/tudou/service/chat/ChatIconFloatView;->access$000(Lcom/tudou/service/chat/ChatIconFloatView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/service/chat/ChatIconFloatView$1;->this$0:Lcom/tudou/service/chat/ChatIconFloatView;

    invoke-static {v3}, Lcom/tudou/service/chat/ChatIconFloatView;->access$000(Lcom/tudou/service/chat/ChatIconFloatView;)Lcom/youku/vo/ChatDialogInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->onBtnChatClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .restart local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v1, "\u7ea2\u70b9"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
