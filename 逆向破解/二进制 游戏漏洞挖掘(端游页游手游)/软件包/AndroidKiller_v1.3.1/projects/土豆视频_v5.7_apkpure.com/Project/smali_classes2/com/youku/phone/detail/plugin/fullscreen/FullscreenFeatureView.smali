.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;
.super Landroid/widget/FrameLayout;
.source "FullscreenFeatureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;,
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/detail/vo/DetailFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrenVid:Ljava/lang/String;

.field private mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

.field private mFeatureAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

.field private mFeatureGrid:Landroid/widget/GridView;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mLoading:Landroid/view/View;

.field private mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->refreshData()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/vo/DetailFeature;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    return-object v0
.end method

.method private refreshData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    .line 105
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 106
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V

    invoke-virtual {v0, v1, v2}, Lcom/tudou/detail/DetailModel;->getVideoFeatureAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;)V

    goto :goto_0
.end method

.method private updateUI(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 5
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->TAG:Ljava/lang/String;

    const-string v2, "updateUI"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p1, :cond_0

    .line 75
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/DetailFeature;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    .line 83
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v3, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p0, v3, v4, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    goto :goto_1
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->updateUI(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 70
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 129
    const v0, 0x7f0c0b5d

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mLoading:Landroid/view/View;

    .line 130
    const v0, 0x7f0c0b5e

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    .line 131
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0c0b5c

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    .line 149
    return-void
.end method

.method public setCurrentVid(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "fetchData"    # Z

    .prologue
    .line 93
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->refreshData()V

    .line 97
    :cond_0
    return-void
.end method

.method public setFeature(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 63
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mCurrenVid:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mDetailFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void
.end method

.method public setOnFeatureItemClickListener(Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mOnFeatureItemClickLis:Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    .line 59
    return-void
.end method

.method public showLoading(ZZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z
    .param p3, "empty"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 152
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    if-nez p2, :cond_2

    .line 160
    if-eqz p3, :cond_1

    .line 161
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 162
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 169
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->mFeatureGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
