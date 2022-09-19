.class Lcom/tudou/ui/fragment/MessageFragment$3;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0e00b4

    const/4 v4, 0x4

    const/4 v3, 0x0

    const v2, 0x7f0e00a3

    .line 130
    if-nez p1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget v0, v0, Lcom/youku/util/MessageManager;->sysMessage:I

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iput v3, v0, Lcom/youku/util/MessageManager;->sysMessage:I

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$100(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iput v3, v0, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$200(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$300(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$400(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    const-string v0, "\u6d88\u606f\u4e2d\u5fc3\u7cfb\u7edf\u63a8\u9001Tab\u70b9\u51fb"

    const-string v1, "\u7cfb\u7edf\u63a8\u9001Tab\u70b9\u51fb"

    const-string v2, "MyChannle|Message|Push"

    invoke-static {v0, v1, v2}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    if-ne v6, p1, :cond_5

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget v0, v0, Lcom/youku/util/MessageManager;->cheMessage:I

    if-lez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iput v3, v0, Lcom/youku/util/MessageManager;->cheMessage:I

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$500(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->checkedFragment:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->checkedFragment:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->onPageSelected()V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iput v6, v0, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$200(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$300(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$400(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    const-string v0, "\u6d88\u606f\u4e2d\u5fc3\u5ba1\u6838\u901a\u77e5Tab\u70b9\u51fb"

    const-string v1, "\u5ba1\u6838\u901a\u77e5Tab\u70b9\u51fb"

    const-string v2, "MyChannle|Message|Review"

    invoke-static {v0, v1, v2}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_5
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget v0, v0, Lcom/youku/util/MessageManager;->priMessage:I

    if-lez v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iput v3, v0, Lcom/youku/util/MessageManager;->priMessage:I

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$700(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    if-eqz v0, :cond_7

    .line 173
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->onPageSelected()V

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    const/4 v1, 0x2

    iput v1, v0, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    .line 175
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$200(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$300(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageFragment;->access$400(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 181
    const-string v0, "\u6d88\u606f\u4e2d\u5fc3\u79c1\u4fe1Tab\u70b9\u51fb"

    const-string v1, "\u79c1\u4fe1Tab\u70b9\u51fb"

    const-string v2, "MyChannle|Message|Privately"

    invoke-static {v0, v1, v2}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
