.class Lcom/tudou/ui/fragment/SubscribeFragment$1;
.super Landroid/os/Handler;
.source "SubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    sput-boolean v6, Lcom/tudou/ui/fragment/SubscribeFragment;->mIsGetStateSuccess:Z

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/ViewPager;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    const v2, 0x7f0e00b4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v1

    const v2, 0x7f0e01ea

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0, v4}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$502(Lcom/tudou/ui/fragment/SubscribeFragment;Z)Z

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    new-instance v1, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SubscribeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 127
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/vo/SubscribeStatusBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/SubscribeStatusBean;->getHasSub()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/vo/SubscribeStatusBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/SubscribeStatusBean;->has_sub_update:Z

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v7}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->setCount(I)V

    .line 157
    :cond_1
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->isHasLocalSub()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$800(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->setCount(I)V

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$900(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v7}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->setCount(I)V

    goto :goto_1

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 161
    :pswitch_1
    sput-boolean v4, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 162
    sput-boolean v4, Lcom/tudou/ui/fragment/SubscribeFragment;->mIsGetStateSuccess:Z

    .line 163
    sput-boolean v6, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 164
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    new-instance v1, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/HomePageActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SubscribeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v7}, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->setCount(I)V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$1;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/youku/widget/ViewPager;->setVisibility(I)V

    .line 172
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 173
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
