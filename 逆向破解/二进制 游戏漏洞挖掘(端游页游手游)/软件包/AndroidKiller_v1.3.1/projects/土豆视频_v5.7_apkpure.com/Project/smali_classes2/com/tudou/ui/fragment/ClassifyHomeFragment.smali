.class public Lcom/tudou/ui/fragment/ClassifyHomeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifyHomeFragment.java"


# static fields
.field public static final ADD_SHORTCUT_SUCCESS:I = 0x186ab

.field public static final HANDLER_MESSAGE_WHAT_EDIT:I = 0x186aa


# instance fields
.field private mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

.field private mAddLauncherBut:Landroid/widget/Button;

.field private mButtomHintView:Landroid/view/View;

.field private mChannalListV5:Lcom/youku/vo/ChannelListV5;

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mContext:Landroid/app/Activity;

.field private mFootView:Landroid/view/View;

.field private mGuideView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mListHeader:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mTitleBackEditView:Landroid/view/View;

.field private mTitleCloseView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->setData()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getAddListData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/service/classify/Classify;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/vo/ChannelListV5;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mButtomHintView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleBackEditView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAddLauncherBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->setQuantity()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->cancelEditListData()V

    return-void
.end method

.method private cancelEditListData()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 433
    :cond_0
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelListInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private eventView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 148
    const-string v1, "classifyListIsGuide"

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 149
    .local v0, "isGuide":Z
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mGuideView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 163
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleCloseView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    const v3, 0x7f04001a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleCloseView:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyHomeFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleBackEditView:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAddLauncherBut:Landroid/widget/Button;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-nez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 233
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 244
    :goto_1
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mGuideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mGuideView:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyHomeFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const-string v1, "classifyListIsGuide"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 237
    :cond_1
    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v2, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_1

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->setData()V

    .line 243
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->loadImage()V

    goto :goto_1
.end method

.method private getAddListData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 449
    :cond_1
    return-object v0

    .line 439
    :cond_2
    const/4 v0, 0x0

    .line 441
    .local v0, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 442
    if-nez v0, :cond_3

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .restart local v0    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-boolean v2, v2, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    if-eqz v2, :cond_4

    .line 446
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFilterList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "mFilterList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 299
    :cond_0
    if-nez v1, :cond_1

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mFilterList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .restart local v1    # "mFilterList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_3
    return-object v1
.end method

.method private getHeaderList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "mHeaderList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 286
    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mHeaderList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .restart local v1    # "mHeaderList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v2, v2, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v2, v2, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    sput-object v1, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;

    .line 125
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 130
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleCloseView:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mTitleBackEditView:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    .line 134
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b8

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListHeader:Landroid/widget/LinearLayout;

    .line 136
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAddLauncherBut:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mGuideView:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030077

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mFootView:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mFootView:Landroid/view/View;

    const v2, 0x7f0c0280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mButtomHintView:Landroid/view/View;

    .line 143
    return-void
.end method

.method private loadImage()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;->start()V

    goto :goto_0
.end method

.method private setData()V
    .locals 4

    .prologue
    .line 248
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    .line 249
    new-instance v0, Lcom/tudou/adapter/ClassifyHomeAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getFilterList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/ClassifyHomeAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    .line 250
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getHeaderList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->setHeaderView(Ljava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/ClassifyHomeAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method

.method private setFootHeight()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 258
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 259
    .local v1, "headerCount":I
    if-eqz v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v5, 0x0

    .line 263
    .local v5, "totalHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    invoke-virtual {v6}, Lcom/tudou/adapter/ClassifyHomeAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 264
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2, v7, v8}, Lcom/tudou/adapter/ClassifyHomeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 265
    .local v3, "mView":Landroid/view/View;
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 266
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "mView":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 271
    .local v0, "display":Landroid/view/Display;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display.getHeight() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 275
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x3

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params.height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 277
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0
.end method

.method private setHeaderView(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "mHeaderList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f0301a0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 319
    .local v11, "mHeaderView":Landroid/view/View;
    const v19, 0x7f0c04b2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 321
    .local v18, "mView":Landroid/view/View;
    const v19, 0x7f0c0760

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 322
    .local v12, "mIcon":Landroid/widget/ImageView;
    const v19, 0x7f0c02e4

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 325
    .local v13, "mName":Landroid/widget/TextView;
    const v19, 0x7f0c0761

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 326
    .local v15, "mUpOne":Landroid/widget/TextView;
    const v19, 0x7f0c0762

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 327
    .local v17, "mUpTwo":Landroid/widget/TextView;
    const v19, 0x7f0c0763

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 328
    .local v16, "mUpThree":Landroid/widget/TextView;
    const v19, 0x7f0c0764

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 329
    .local v8, "mDownOne":Landroid/widget/TextView;
    const v19, 0x7f0c0765

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 330
    .local v10, "mDownTwo":Landroid/widget/TextView;
    const v19, 0x7f0c0766

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 332
    .local v9, "mDownThree":Landroid/widget/TextView;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v14, "mTextViewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/ChannelListInfo;

    .line 342
    .local v6, "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    iget-object v0, v6, Lcom/youku/vo/ChannelListInfo;->selected_icon:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 343
    const v19, 0x7f0200e7

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 368
    :goto_2
    iget-object v0, v6, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    new-instance v19, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/youku/vo/ChannelListInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    const/4 v5, 0x6

    .line 394
    .local v5, "labelsSize":I
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v5, :cond_3

    .line 395
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/youku/vo/ChannelListInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/ChannelListInfo;

    .line 396
    .local v7, "mChannelListItemInfo":Lcom/youku/vo/ChannelListInfo;
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    iget-object v0, v7, Lcom/youku/vo/ChannelListInfo;->label_title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    new-instance v20, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 345
    .end local v4    # "j":I
    .end local v5    # "labelsSize":I
    .end local v7    # "mChannelListItemInfo":Lcom/youku/vo/ChannelListInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v19, v0

    check-cast v19, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v19

    iget-object v0, v6, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Lcom/tudou/ui/fragment/ClassifyHomeFragment$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$7;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Landroid/widget/ImageView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v12, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_2

    .line 391
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/youku/vo/ChannelListInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_3

    .line 412
    .restart local v4    # "j":I
    .restart local v5    # "labelsSize":I
    :cond_3
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    .line 413
    const/4 v4, 0x5

    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/youku/vo/ChannelListInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v4, v0, :cond_4

    .line 414
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 417
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListHeader:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 420
    .end local v4    # "j":I
    .end local v5    # "labelsSize":I
    .end local v6    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    .end local v8    # "mDownOne":Landroid/widget/TextView;
    .end local v9    # "mDownThree":Landroid/widget/TextView;
    .end local v10    # "mDownTwo":Landroid/widget/TextView;
    .end local v11    # "mHeaderView":Landroid/view/View;
    .end local v12    # "mIcon":Landroid/widget/ImageView;
    .end local v13    # "mName":Landroid/widget/TextView;
    .end local v14    # "mTextViewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    .end local v15    # "mUpOne":Landroid/widget/TextView;
    .end local v16    # "mUpThree":Landroid/widget/TextView;
    .end local v17    # "mUpTwo":Landroid/widget/TextView;
    .end local v18    # "mView":Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v19

    if-nez v19, :cond_6

    .line 421
    const v19, 0x7f0d02c3

    invoke-static/range {v19 .. v19}, Lcom/youku/util/Util;->showTips(I)V

    .line 423
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mListHeader:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setQuantity()V
    .locals 5

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->getAddListData()Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    .local v0, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    const/4 v1, 0x0

    .line 493
    .local v1, "quantity":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 495
    :cond_0
    if-nez v1, :cond_1

    .line 496
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAddLauncherBut:Landroid/widget/Button;

    const-string v3, "\u6dfb\u52a0\u5230\u684c\u9762"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAddLauncherBut:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6dfb\u52a0\u5230\u684c\u9762("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addShotCutChannel(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "addLauncherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;-><init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->start()V

    .line 475
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const v0, 0x7f03010b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    .line 115
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->initView()V

    .line 116
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->eventView()V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->mAdapter:Lcom/tudou/adapter/ClassifyHomeAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    .line 506
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->cancelEditListData()V

    .line 508
    :cond_0
    sget-object v0, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/service/classify/ClassifyManager;->classifyHomeActivity:Landroid/app/Activity;

    .line 510
    :cond_1
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 511
    return-void
.end method
