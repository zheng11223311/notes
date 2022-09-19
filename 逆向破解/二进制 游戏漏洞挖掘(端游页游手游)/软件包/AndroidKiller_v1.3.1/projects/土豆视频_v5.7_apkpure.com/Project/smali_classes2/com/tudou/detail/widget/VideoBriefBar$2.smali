.class Lcom/tudou/detail/widget/VideoBriefBar$2;
.super Ljava/lang/Object;
.source "VideoBriefBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoBriefBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoBriefBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoBriefBar;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoBriefBar$2;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 72
    sput-boolean v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->mRefreshKey:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoBriefBar$2;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u53d6\u6d88\u8ba2\u9605"

    :goto_0
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoBriefBar$2;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 77
    .local v1, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v1, :cond_0

    .line 78
    const-string v2, "vid"

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    const-string v2, "t1.detail_sdetail.subscribe"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar$2;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoBriefBar;->access$100(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const v2, 0x7f0d00a8

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 87
    :goto_1
    return-void

    .line 75
    .end local v1    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_1
    const-string v2, "\u8ba2\u9605"

    goto :goto_0

    .line 86
    .restart local v1    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_2
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar$2;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v4, v2}, Lcom/tudou/detail/widget/VideoBriefBar;->access$200(Lcom/tudou/detail/widget/VideoBriefBar;Z)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
