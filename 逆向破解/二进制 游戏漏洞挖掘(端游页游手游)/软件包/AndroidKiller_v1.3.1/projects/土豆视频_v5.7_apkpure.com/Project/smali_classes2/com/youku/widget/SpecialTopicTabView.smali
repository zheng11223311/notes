.class public Lcom/youku/widget/SpecialTopicTabView;
.super Landroid/widget/LinearLayout;
.source "SpecialTopicTabView.java"


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImage:Lcom/youku/widget/YoukuImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRightText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mTitleName:Landroid/widget/TextView;

.field private mTtitleCornerImage:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/SpecialTopicTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/youku/widget/SpecialTopicTabView;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/youku/widget/SpecialTopicTabView;->mChannelName:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/youku/widget/SpecialTopicTabView;->initView()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SpecialTopicTabView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SpecialTopicTabView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 49
    const-string v0, "layout_inflater"

    .line 50
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/SpecialTopicTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mView:Landroid/view/View;

    .line 52
    const v1, 0x7f0c02b9

    invoke-virtual {p0, v1}, Lcom/youku/widget/SpecialTopicTabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mRootView:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mView:Landroid/view/View;

    const v2, 0x7f0c026e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mTitleName:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mView:Landroid/view/View;

    const v2, 0x7f0c02d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 55
    iget-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mView:Landroid/view/View;

    const v2, 0x7f0c028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mRightText:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mView:Landroid/view/View;

    const v2, 0x7f0c0281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    iput-object v1, p0, Lcom/youku/widget/SpecialTopicTabView;->mImage:Lcom/youku/widget/YoukuImageView;

    .line 57
    return-void
.end method


# virtual methods
.method public setData(Lcom/youku/vo/ChannelPageModules;)V
    .locals 3
    .param p1, "mChannelPageModules"    # Lcom/youku/vo/ChannelPageModules;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/widget/SpecialTopicTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mRightText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->cover_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/widget/SpecialTopicTabView;->mImage:Lcom/youku/widget/YoukuImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 72
    iget-object v0, p0, Lcom/youku/widget/SpecialTopicTabView;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/youku/widget/SpecialTopicTabView$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/widget/SpecialTopicTabView$1;-><init>(Lcom/youku/widget/SpecialTopicTabView;Lcom/youku/vo/ChannelPageModules;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
