.class public Lcom/tudou/detail/widget/VideoFavCacheBar;
.super Landroid/widget/FrameLayout;
.source "VideoFavCacheBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnCache:Landroid/view/View;

.field private mBtnChat:Landroid/view/View;

.field private mBtnFav:Landroid/widget/ToggleButton;

.field private mBtnShare:Landroid/view/View;

.field private mPlaytimes:Landroid/widget/TextView;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoFavCacheBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoFavCacheBar;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoFavCacheBar;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnFav:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tudou/detail/widget/VideoFavCacheBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 50
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mPlaytimes:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnFav:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    const v1, 0x7f0c0314

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mPlaytimes:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0c0315

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnShare:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnShare:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoFavCacheBar$1;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoFavCacheBar$1;-><init>(Lcom/tudou/detail/widget/VideoFavCacheBar;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0c0317

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnCache:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnCache:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoFavCacheBar$2;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoFavCacheBar$2;-><init>(Lcom/tudou/detail/widget/VideoFavCacheBar;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0c0316

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnFav:Landroid/widget/ToggleButton;

    .line 84
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnFav:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/tudou/detail/widget/VideoFavCacheBar$3;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoFavCacheBar$3;-><init>(Lcom/tudou/detail/widget/VideoFavCacheBar;)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0c0318

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnChat:Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnChat:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoFavCacheBar$4;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoFavCacheBar$4;-><init>(Lcom/tudou/detail/widget/VideoFavCacheBar;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnChat:Landroid/view/View;

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v1}, Lcom/youku/vo/TudouSwitchesBean;->getWatchAndChat()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnChat:Landroid/view/View;

    const v3, 0x7f0c0319

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "cling":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoFavCacheBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "detail.cling.chats.show"

    invoke-static {v1, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void

    .line 119
    .end local v0    # "cling":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setFav(Z)V
    .locals 1
    .param p1, "fav"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mBtnFav:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 56
    return-void
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 4
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/tudou/detail/widget/VideoFavCacheBar;->clear()V

    .line 128
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v1, :cond_1

    .line 129
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 130
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v0

    .line 131
    .local v0, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_3

    .line 132
    :cond_0
    iget-object v1, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mPlaytimes:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v0    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    :goto_0
    return-void

    .line 135
    .restart local v0    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_2
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mPlaytimes:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->user_play_times:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar;->mPlaytimes:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
