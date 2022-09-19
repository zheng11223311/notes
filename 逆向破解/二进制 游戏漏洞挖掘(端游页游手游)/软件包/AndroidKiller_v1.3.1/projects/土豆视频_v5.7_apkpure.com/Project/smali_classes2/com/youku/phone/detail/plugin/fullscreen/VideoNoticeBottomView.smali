.class public Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;
.super Landroid/widget/FrameLayout;
.source "VideoNoticeBottomView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentSwitcher:Landroid/widget/TextSwitcher;

.field private mCurrentLine:I

.field private mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeBottom;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mUserContentInAnim:Landroid/view/animation/AnimationSet;

.field private mUserContentOutAnim:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    .line 69
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    .line 71
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 72
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, -0x41666666    # -0.3f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 73
    .local v0, "trans":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 77
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 78
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 79
    .restart local v0    # "trans":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const v9, 0x3e99999a    # 0.3f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 80
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 81
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 82
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 83
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Lcom/tudou/detail/vo/VideoNoticeBottom;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeBottom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    return p1
.end method

.method static synthetic access$108(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    return v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/widget/TextSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getCurrentVideoNotice()Lcom/tudou/detail/vo/VideoNoticeBottom;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeBottom;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/high16 v7, 0x44960000    # 1200.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 122
    const v2, 0x7f0c0ba9

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mImage:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f0c0baa

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    .line 125
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "line1":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 129
    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 131
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 132
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, "line2":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 138
    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 140
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 141
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/VideoNoticeBottom;)V
    .locals 6
    .param p1, "data"    # Lcom/tudou/detail/vo/VideoNoticeBottom;

    .prologue
    const/4 v3, 0x0

    .line 92
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeBottom;

    .line 93
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    if-eqz p1, :cond_3

    .line 95
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    .line 96
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeBottom;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoNoticeBottom;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 98
    .local v1, "total":I
    :goto_0
    if-eqz v1, :cond_2

    .line 99
    :goto_1
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    if-lt v2, v1, :cond_1

    .line 100
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    goto :goto_1

    .end local v1    # "total":I
    :cond_0
    move v1, v3

    .line 97
    goto :goto_0

    .line 102
    .restart local v1    # "total":I
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mContentSwitcher:Landroid/widget/TextSwitcher;

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;

    iget-object v2, v2, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;->mLineContent:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 103
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mCurrentLine:I

    .line 104
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeBottom;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 116
    .end local v0    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;>;"
    .end local v1    # "total":I
    :cond_3
    return-void
.end method
