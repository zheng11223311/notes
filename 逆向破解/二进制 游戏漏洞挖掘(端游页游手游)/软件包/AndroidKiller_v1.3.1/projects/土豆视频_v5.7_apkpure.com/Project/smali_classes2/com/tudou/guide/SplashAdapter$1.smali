.class Lcom/tudou/guide/SplashAdapter$1;
.super Ljava/lang/Object;
.source "SplashAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/SplashAdapter;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$tab:Lcom/youku/vo/GuideTab;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashAdapter;Landroid/widget/ProgressBar;Lcom/youku/vo/GuideTab;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    iput-object p2, p0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    const-string v0, "t1.find_subrecommend.subscribe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v1}, Lcom/tudou/guide/SplashAdapter;->access$000(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v2, v2, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v3, v3, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    const-string v4, "0"

    iget-object v8, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget v8, v8, Lcom/youku/vo/GuideTab;->v_user:I

    if-ne v5, v8, :cond_1

    :goto_0
    iget-object v6, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v6, v6, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    new-instance v8, Lcom/tudou/guide/SplashAdapter$1$1;

    invoke-direct {v8, p0, p1}, Lcom/tudou/guide/SplashAdapter$1$1;-><init>(Lcom/tudou/guide/SplashAdapter$1;Landroid/view/View;)V

    invoke-interface/range {v0 .. v8}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 205
    :cond_0
    :goto_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v10, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "refercode"

    const-string v1, "GuideChannelRecommend|SubCenterClick"

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v9, ""

    .line 208
    .local v9, "clickStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$400(Lcom/tudou/guide/SplashAdapter;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_2
    const-class v0, Lcom/tudou/guide/SplashSubActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f15\u5bfc\u9875"

    invoke-static {v9, v0, v1, v10}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 235
    .end local v9    # "clickStr":Ljava/lang/String;
    .end local v10    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-void

    :cond_1
    move v5, v6

    .line 106
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v1}, Lcom/tudou/guide/SplashAdapter;->access$000(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v2, v2, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    new-instance v3, Lcom/tudou/guide/SplashAdapter$1$2;

    invoke-direct {v3, p0, p1}, Lcom/tudou/guide/SplashAdapter$1$2;-><init>(Lcom/tudou/guide/SplashAdapter$1;Landroid/view/View;)V

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_1

    .line 160
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    const v0, 0x7f0d00a7

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 199
    :catch_0
    move-exception v0

    .line 201
    :goto_4
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    goto :goto_1

    .line 165
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$300(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    new-instance v2, Lcom/tudou/guide/SplashAdapter$1$3;

    invoke-direct {v2, p0}, Lcom/tudou/guide/SplashAdapter$1$3;-><init>(Lcom/tudou/guide/SplashAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/SplashSubManager;->canelAttention(Lcom/youku/vo/GuideTab;Lcom/tudou/guide/SplashSubManager$OnCancelAttention;)V

    goto :goto_4

    .line 181
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v11, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->val$tab:Lcom/youku/vo/GuideTab;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$300(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    new-instance v1, Lcom/tudou/guide/SplashAdapter$1$4;

    invoke-direct {v1, p0}, Lcom/tudou/guide/SplashAdapter$1$4;-><init>(Lcom/tudou/guide/SplashAdapter$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Lcom/tudou/guide/SplashSubManager;->addAttention(Ljava/util/ArrayList;Lcom/tudou/guide/SplashSubManager$OnAddAttention;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 212
    .end local v11    # "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    .restart local v9    # "clickStr":Ljava/lang/String;
    .restart local v10    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v9, "\u542f\u52a8\u81ea\u9891\u9053\u8be6\u60c5\u9875\u516b\u5366\u661f\u4eba\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    .line 213
    goto/16 :goto_2

    .line 215
    :pswitch_1
    const-string v9, "\u542f\u52a8\u81ea\u9891\u9053\u8be6\u60c5\u9875\u9017\u6bd4\u661f\u4eba\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    .line 216
    goto/16 :goto_2

    .line 218
    :pswitch_2
    const-string v9, "\u542f\u52a8\u81ea\u9891\u9053\u8be6\u60c5\u9875\u70e7\u94b1\u661f\u4eba\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    .line 219
    goto/16 :goto_2

    .line 221
    :pswitch_3
    const-string v9, "\u542f\u52a8\u81ea\u9891\u9053\u8be6\u60c5\u9875\u4e50\u6d3b\u661f\u4eba\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    .line 222
    goto/16 :goto_2

    .line 224
    :pswitch_4
    const-string v9, "\u542f\u52a8\u81ea\u9891\u9053\u8be6\u60c5\u9875\u5b85\u8150\u661f\u4eba\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    .line 225
    goto/16 :goto_2

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
