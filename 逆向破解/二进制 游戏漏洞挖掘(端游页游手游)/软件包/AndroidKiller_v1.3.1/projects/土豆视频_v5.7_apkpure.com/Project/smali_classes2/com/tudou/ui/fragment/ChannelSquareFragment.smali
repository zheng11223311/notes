.class public Lcom/tudou/ui/fragment/ChannelSquareFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ChannelSquareFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/ChannelSquareFragment$7;,
        Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;
    }
.end annotation


# static fields
.field public static final GET_CHANNELSQUARE_CLASSFIES_FAILED:I = 0x186a2

.field public static final GET_CHANNELSQUARE_CLASSFIES_SUCCESSFULL:I = 0x186a1

.field private static pos:I

.field public static sFIST_TAB_SUB_COUNT:I

.field public static sSECOND_TAB_SUB_COUNT:I


# instance fields
.field private channelSquare:Landroid/view/View;

.field private channel_subclass:Landroid/view/View;

.field private csClassfy:Lcom/youku/vo/ChannelSquareClassfy;

.field private csTagTextView:Landroid/widget/TextView;

.field private left:Landroid/widget/ImageView;

.field private mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

.field private mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

.field public mHandler:Landroid/os/Handler;

.field private mSubClassItems:Landroid/widget/LinearLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/tudou/adapter/ChannelSquareViewPagerAdapter;

.field private noChannel:Lcom/youku/widget/HintView;

.field private right:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    .line 65
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    .line 66
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->pos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$2;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->getClassifiesInfos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mSubClassItems:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/youku/widget/PageHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->generatTagBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/ChannelSquareFragment;Lcom/youku/vo/ChannelSquareClassfy;)Lcom/youku/vo/ChannelSquareClassfy;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelSquareClassfy;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csClassfy:Lcom/youku/vo/ChannelSquareClassfy;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csTagTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/ChannelSquareFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csTagTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 33
    sput p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->pos:I

    return p0
.end method

.method private buildView()V
    .locals 5

    .prologue
    const v4, 0x7f0c01c4

    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v2, 0x7f0c0077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->right:Landroid/widget/ImageView;

    .line 165
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->left:Landroid/widget/ImageView;

    .line 166
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v2, 0x7f0c01c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mSubClassItems:Landroid/widget/LinearLayout;

    .line 168
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channel_subclass:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v2, 0x7f0c04b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 171
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-static {v1}, Lcom/youku/util/Util;->getWitdth(Landroid/app/Activity;)I

    move-result v0

    .line 172
    .local v0, "totalWidth":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->left:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 173
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->right:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 175
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 176
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setLeftButton(Landroid/widget/ImageView;)V

    .line 177
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mChannelSubClass:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setRightButton(Landroid/widget/ImageView;)V

    .line 178
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    .line 179
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->initTitle()V

    .line 180
    return-void
.end method

.method public static changeSub()V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->pos:I

    if-nez v0, :cond_1

    .line 70
    sget v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->pos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    sget v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    goto :goto_0
.end method

.method private generatTagBar()V
    .locals 8

    .prologue
    .line 245
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mSubClassItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csClassfy:Lcom/youku/vo/ChannelSquareClassfy;

    iget-object v5, v5, Lcom/youku/vo/ChannelSquareClassfy;->channelSquareTagList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, "tagSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 248
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csClassfy:Lcom/youku/vo/ChannelSquareClassfy;

    iget-object v5, v5, Lcom/youku/vo/ChannelSquareClassfy;->channelSquareTagList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelSquareTag;

    iget-object v3, v5, Lcom/youku/vo/ChannelSquareTag;->title:Ljava/lang/String;

    .line 251
    .local v3, "tagText":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030075

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "convertView":Landroid/view/View;
    const v5, 0x7f0c0277

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 255
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mSubClassItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v5, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;

    invoke-direct {v5, p0, v4}, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "convertView":Landroid/view/View;
    .end local v3    # "tagText":Ljava/lang/String;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->initViewPager()V

    .line 283
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mSubClassItems:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 284
    return-void
.end method

.method private getClassifiesInfos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 214
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getChannelSquareClassfies()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "csClassfiesURL":Ljava/lang/String;
    sput-boolean v4, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 216
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 218
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 220
    .local v2, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 241
    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    .line 184
    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 185
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 187
    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v3, Lcom/tudou/ui/fragment/ChannelSquareFragment$3;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$3;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "txt_title":Landroid/widget/TextView;
    const-string v3, "\u7cbe\u54c1\u81ea\u9891\u9053"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method private initViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    new-instance v0, Lcom/tudou/adapter/ChannelSquareViewPagerAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->csClassfy:Lcom/youku/vo/ChannelSquareClassfy;

    iget-object v2, v2, Lcom/youku/vo/ChannelSquareClassfy;->channelSquareTagList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/ChannelSquareViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPagerAdapter:Lcom/tudou/adapter/ChannelSquareViewPagerAdapter;

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPagerAdapter:Lcom/tudou/adapter/ChannelSquareViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$6;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 325
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/ChannelSquareActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    const v0, 0x7f030104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->buildView()V

    .line 151
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 153
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->channelSquare:Landroid/view/View;

    return-object v0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->getClassifiesInfos()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 289
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    .line 290
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    .line 291
    sput v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->pos:I

    .line 292
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 293
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 208
    return-void
.end method

.method public setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;)V
    .locals 2
    .param p1, "noContentTips"    # Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p1}, Lcom/youku/widget/HintView;->setTag(Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$7;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I

    invoke-virtual {p1}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$1;-><init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->noChannel:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
