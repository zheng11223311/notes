.class public Lcom/tudou/guide/SplashAdapter;
.super Landroid/widget/BaseAdapter;
.source "SplashAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;
    }
.end annotation


# instance fields
.field private OnSelectItemListener:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

.field private activity:Lcom/tudou/ui/activity/BaseActivity;

.field private mFragment:Lcom/tudou/ui/fragment/SplashSubFragment;

.field private manager:Lcom/tudou/guide/SplashSubManager;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation
.end field

.field private showBtnSub:Z

.field private which:I


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/tudou/ui/activity/BaseActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/guide/SplashAdapter;->which:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/guide/SplashAdapter;->showBtnSub:Z

    .line 53
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter;->activity:Lcom/tudou/ui/activity/BaseActivity;

    .line 54
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/guide/SplashAdapter;->manager:Lcom/tudou/guide/SplashSubManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->activity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/fragment/SplashSubFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->mFragment:Lcom/tudou/ui/fragment/SplashSubFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->OnSelectItemListener:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/guide/SplashSubManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->manager:Lcom/tudou/guide/SplashSubManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/guide/SplashAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashAdapter;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/guide/SplashAdapter;->which:I

    return v0
.end method

.method private setHeaderImage(Lcom/nostra13/universalimageloader/core/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    new-instance v1, Lcom/tudou/guide/SplashAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/tudou/guide/SplashAdapter$2;-><init>(Lcom/tudou/guide/SplashAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 305
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOnSelectItemListener()Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->OnSelectItemListener:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    return-object v0
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v5, p0, Lcom/tudou/guide/SplashAdapter;->activity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030057

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    const v5, 0x7f0c0219

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "txtName":Landroid/widget/TextView;
    const v5, 0x7f0c0218

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, "imgHeaer":Landroid/widget/ImageView;
    const v5, 0x7f0c021a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "btnSub":Landroid/widget/ImageView;
    const v5, 0x7f0c021b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 84
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/tudou/guide/SplashAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget-object v5, v5, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/tudou/guide/SplashAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    .line 86
    .local v3, "tab":Lcom/youku/vo/GuideTab;
    iget-object v5, p0, Lcom/tudou/guide/SplashAdapter;->activity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v6}, Lcom/tudou/guide/SplashAdapter;->setHeaderImage(Lcom/nostra13/universalimageloader/core/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 87
    iget-boolean v5, p0, Lcom/tudou/guide/SplashAdapter;->showBtnSub:Z

    if-eqz v5, :cond_1

    .line 88
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const v5, 0x7f020079

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    :goto_0
    new-instance v5, Lcom/tudou/guide/SplashAdapter$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/tudou/guide/SplashAdapter$1;-><init>(Lcom/tudou/guide/SplashAdapter;Landroid/widget/ProgressBar;Lcom/youku/vo/GuideTab;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :goto_1
    return-object p2

    .line 93
    :cond_0
    const v5, 0x7f020078

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 240
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getWhich()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/tudou/guide/SplashAdapter;->which:I

    return v0
.end method

.method public isShowBtnSub()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/tudou/guide/SplashAdapter;->showBtnSub:Z

    return v0
.end method

.method public setFragment(Lcom/tudou/ui/fragment/SplashSubFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter;->mFragment:Lcom/tudou/ui/fragment/SplashSubFragment;

    .line 59
    return-void
.end method

.method public setOnSelectItemListener(Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;)V
    .locals 0
    .param p1, "onSelectItemListener"    # Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter;->OnSelectItemListener:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    .line 329
    return-void
.end method

.method public setResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter;->result:Ljava/util/ArrayList;

    .line 252
    return-void
.end method

.method public setShowBtnSub(Z)V
    .locals 0
    .param p1, "showBtnSub"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/tudou/guide/SplashAdapter;->showBtnSub:Z

    .line 320
    return-void
.end method

.method public setWhich(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/tudou/guide/SplashAdapter;->which:I

    .line 337
    return-void
.end method
