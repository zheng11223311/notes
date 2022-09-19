.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;
.super Landroid/widget/FrameLayout;
.source "FullscreenRecomendView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$DetailRecommendItemHolder;,
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;
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
            "Lcom/youku/vo/DetailRecomment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAid:Ljava/lang/String;

.field private mCurrenVid:Ljava/lang/String;

.field private mDetailrecommend:Lcom/youku/vo/DetailRecomment;

.field private mGridView:Landroid/widget/GridView;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mId:Ljava/lang/String;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mIsShow:Z

.field private mLoading:Landroid/view/View;

.field private mPlId:Ljava/lang/String;

.field private mRecommendAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

.field private mVideoType:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->fetchData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)Lcom/youku/vo/DetailRecomment;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)Lcom/tudou/android/Youku$VideoType;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method private fetchData(Ljava/lang/String;)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchData vid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/tudou/ui/activity/DetailActivity;

    .line 128
    .local v6, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "currentVid":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v2, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 159
    :goto_1
    return-void

    .end local v1    # "currentVid":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 128
    goto :goto_0

    .line 133
    .restart local v1    # "currentVid":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->showLoading(ZZ)V

    .line 134
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 136
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mAid:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mPlId:Ljava/lang/String;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;

    invoke-direct {v5, p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;Lcom/tudou/detail/DetailModel;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->getVideoDetailAsyn(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;)V

    goto :goto_1
.end method

.method private updateUI(Lcom/youku/vo/DetailRecomment;)V
    .locals 5
    .param p1, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    const/4 v4, 0x1

    .line 166
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI recommend = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrenVid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailRecomment;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    iget-object v1, v1, Lcom/youku/vo/DetailRecomment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    :goto_1
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 173
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mRecommendAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    .line 176
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mRecommendAdapter:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, v2, :cond_2

    .line 178
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 179
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 187
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 182
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 185
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->showLoading(ZZ)V

    goto :goto_2
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->updateUI(Lcom/youku/vo/DetailRecomment;)V

    .line 163
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const v0, 0x7f0c0bd9

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mLoading:Landroid/view/View;

    .line 74
    const v0, 0x7f0c0bda

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    .line 75
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0c0bd8

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    .line 87
    return-void
.end method

.method public setBaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "plid"    # Ljava/lang/String;
    .param p4, "isShow"    # Z

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mAid:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mPlId:Ljava/lang/String;

    .line 67
    iput-boolean p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mIsShow:Z

    .line 68
    return-void
.end method

.method public setCurrentVid(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "setSelectionOnly"    # Z

    .prologue
    .line 119
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    .line 120
    if-nez p3, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->fetchData(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setRecommend(Lcom/youku/vo/DetailRecomment;)V
    .locals 3
    .param p1, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 108
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecommend recommend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrenVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mDetailrecommend:Lcom/youku/vo/DetailRecomment;

    .line 111
    iget-object v0, p1, Lcom/youku/vo/DetailRecomment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    if-nez p2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 102
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
