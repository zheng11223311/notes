.class Lcom/youku/adapter/SearchChannelAdapter$1;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter;->setView(ILandroid/view/View;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchChannelAdapter;

.field final synthetic val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

.field final synthetic val$position:I

.field final synthetic val$user:Lcom/youku/vo/SokuPodcast$User;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter;Lcom/youku/vo/SokuPodcast$User;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iput-object p3, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    iput p4, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    const-string v0, "imgSubed"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 148
    :cond_0
    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 150
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iget-boolean v0, v0, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const v0, 0x7f0d00a7

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iput v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 158
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->access$000(Lcom/youku/adapter/SearchChannelAdapter;I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->imgSubed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$holder:Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;

    iget-object v0, v0, Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;->subedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iput v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 163
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->access$100(Lcom/youku/adapter/SearchChannelAdapter;I)V

    goto :goto_0
.end method
