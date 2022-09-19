.class Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;
.super Landroid/os/Handler;
.source "HistoryEpisodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0d02c3

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v1

    invoke-static {v0, v6, v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$500(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;II)V

    .line 98
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$902(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Z)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$700(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$800(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u4e91\u5267\u96c6\u8bb0\u5f55\u52a0\u8f7d\u51fa\u9519"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u52a0\u8f7d\u5267\u96c6\u8bb0\u5f55\u51fa\u9519"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1010(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    .line 111
    :cond_3
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$902(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Z)Z

    .line 113
    const-string v0, "\u6570\u636e\u66f4\u65b0\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :pswitch_4
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 117
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->transformEditableState()V

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->reLoad()V

    goto/16 :goto_0

    .line 122
    :pswitch_5
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 123
    const-string v0, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :pswitch_6
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->hideTabLayout()V

    .line 128
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$700(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$800(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 132
    :pswitch_7
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$700(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$800(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    const-string v0, "HistoryEpisodeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u672c\u5730\u7684\u64ad\u653e\u5386\u53f2\u957f\u5ea6mPlayedVideosList=======------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 158
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 159
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$902(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Z)Z

    goto/16 :goto_0

    .line 153
    :cond_5
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$700(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$800(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
