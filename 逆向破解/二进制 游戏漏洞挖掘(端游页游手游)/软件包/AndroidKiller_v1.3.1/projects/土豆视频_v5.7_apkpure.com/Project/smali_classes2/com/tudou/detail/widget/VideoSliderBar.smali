.class public Lcom/tudou/detail/widget/VideoSliderBar;
.super Landroid/widget/FrameLayout;
.source "VideoSliderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnComment:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnFeature:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnPodcastUser:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnPoint:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnSummary:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mBtnUrl:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

.field private mCount:I

.field mSharePreference:Landroid/content/SharedPreferences;

.field private mSliderMenu:Landroid/widget/LinearLayout;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoState:Lcom/tudou/detail/vo/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoSliderBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mCount:I

    .line 61
    const-string v0, "Detail.Cling"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSharePreference:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSliderBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSliderBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnPodcastUser:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSliderBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSliderBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/detail/widget/VideoSliderBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSliderBar;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->showDiggedAnim()V

    return-void
.end method

.method private generateDefaultLayoutParam()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private makeAndAddItem(Lcom/tudou/detail/vo/SliderInfo;)V
    .locals 11
    .param p1, "detail"    # Lcom/tudou/detail/vo/SliderInfo;

    .prologue
    const/4 v7, 0x0

    .line 129
    sget-object v8, Lcom/tudou/detail/widget/VideoSliderBar;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeAndAddItem type = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p1, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 131
    .local v3, "tInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0300b4

    iget-object v8, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSliderMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, "v":Landroid/view/View;
    new-instance v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    invoke-direct {v0, v5}, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;-><init>(Landroid/view/View;)V

    .line 133
    .local v0, "holder":Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->setSliderDetail(Lcom/tudou/detail/vo/SliderInfo;)V

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "tIconRes":I
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_6

    .line 137
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnSummary:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 138
    const v2, 0x7f020195

    .line 163
    :cond_0
    :goto_1
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-eq v6, v8, :cond_1

    .line 165
    iget-object v6, p1, Lcom/tudou/detail/vo/SliderInfo;->mIcon:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mIcon:Ljava/lang/String;

    new-instance v9, Lcom/tudou/detail/widget/VideoSliderBar$2;

    invoke-direct {v9, p0, v0}, Lcom/tudou/detail/widget/VideoSliderBar$2;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;)V

    invoke-virtual {v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 178
    :cond_1
    iget-object v6, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 179
    iget-object v6, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-eq v6, v8, :cond_2

    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_3

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSharePreference:Landroid/content/SharedPreferences;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {v8}, Lcom/tudou/detail/vo/SliderInfo$SliderType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 184
    .local v4, "used":Z
    iget-object v8, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->cling:Landroid/view/View;

    if-eqz v4, :cond_e

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .end local v4    # "used":Z
    :cond_3
    iget-object v6, p1, Lcom/tudou/detail/vo/SliderInfo;->mCornerImage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 188
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p1, Lcom/tudou/detail/vo/SliderInfo;->mCornerImage:Ljava/lang/String;

    new-instance v8, Lcom/tudou/detail/widget/VideoSliderBar$3;

    invoke-direct {v8, p0, v0}, Lcom/tudou/detail/widget/VideoSliderBar$3;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;)V

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 199
    :cond_4
    iget v6, p1, Lcom/tudou/detail/vo/SliderInfo;->index:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 200
    iget-object v6, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSliderMenu:Landroid/widget/LinearLayout;

    iget v7, p1, Lcom/tudou/detail/vo/SliderInfo;->index:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 201
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_10

    .line 202
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_f

    .line 203
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    return-void

    .line 129
    .end local v0    # "holder":Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "tIconRes":I
    .end local v3    # "tInflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_5
    const-string v6, "null"

    goto/16 :goto_0

    .line 139
    .restart local v0    # "holder":Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
    .restart local v2    # "tIconRes":I
    .restart local v3    # "tInflater":Landroid/view/LayoutInflater;
    .restart local v5    # "v":Landroid/view/View;
    :cond_6
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_7

    .line 140
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 141
    const v2, 0x7f02018f

    goto/16 :goto_1

    .line 142
    :cond_7
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_8

    .line 143
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnFeature:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 144
    const v2, 0x7f020191

    goto/16 :goto_1

    .line 145
    :cond_8
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_9

    .line 146
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnPoint:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 147
    const v2, 0x7f020194

    goto/16 :goto_1

    .line 148
    :cond_9
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_a

    .line 149
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnPodcastUser:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 150
    const v2, 0x7f020186

    goto/16 :goto_1

    .line 151
    :cond_a
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_b

    .line 152
    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnComment:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    .line 153
    const v2, 0x7f02018e

    goto/16 :goto_1

    .line 154
    :cond_b
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_c

    .line 155
    const v2, 0x7f020192

    goto/16 :goto_1

    .line 156
    :cond_c
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_d

    .line 157
    const v2, 0x7f020186

    goto/16 :goto_1

    .line 158
    :cond_d
    sget-object v6, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v8, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v8, :cond_0

    .line 159
    const v2, 0x7f020196

    goto/16 :goto_1

    .restart local v4    # "used":Z
    :cond_e
    move v6, v7

    .line 184
    goto/16 :goto_2

    .line 205
    .end local v4    # "used":Z
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_f
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "already has child"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    :cond_10
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "parent is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 211
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_11
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "index is invalid"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private setupViews(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 83
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSliderMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->generateDefaultLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 86
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSliderMenu:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private showDiggedAnim()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v3, v3, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v4, 0x7f0c0357

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 325
    .local v9, "text":Landroid/widget/TextView;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "+2"

    :goto_0
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 328
    .local v0, "tran":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 329
    new-instance v1, Lcom/tudou/detail/widget/VideoSliderBar$6;

    invoke-direct {v1, p0, v9}, Lcom/tudou/detail/widget/VideoSliderBar$6;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 345
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    return-void

    .line 325
    .end local v0    # "tran":Landroid/view/animation/TranslateAnimation;
    :cond_0
    const-string v3, "+1"

    goto :goto_0
.end method


# virtual methods
.method public addSliderBarItem(Lcom/tudou/detail/vo/SliderInfo;)V
    .locals 0
    .param p1, "slider"    # Lcom/tudou/detail/vo/SliderInfo;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/tudou/detail/widget/VideoSliderBar;->makeAndAddItem(Lcom/tudou/detail/vo/SliderInfo;)V

    .line 96
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mCount:I

    return v0
.end method

.method public onBtnDigClicked()V
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 295
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "vid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v2

    new-instance v3, Lcom/tudou/detail/widget/VideoSliderBar$5;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoSliderBar$5;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;)V

    invoke-virtual {v2, v1, v3}, Lcom/tudou/detail/DetailModel;->digVideo(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDigComplete;)V

    goto :goto_0

    .line 318
    :cond_2
    const-string v2, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    const-string v1, "videosliderbar.item"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSliderBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 246
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    new-instance v1, Lcom/tudou/detail/widget/VideoSliderBar$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/tudou/detail/widget/VideoSliderBar$4;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;Landroid/view/View;Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedbackScale(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0c0351

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoSliderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mSliderMenu:Landroid/widget/LinearLayout;

    .line 68
    return-void
.end method

.method public setSliderInfo(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/SliderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "sliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    iput p1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mCount:I

    .line 76
    invoke-direct {p0, p1}, Lcom/tudou/detail/widget/VideoSliderBar;->setupViews(I)V

    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/SliderInfo;

    .line 78
    .local v0, "detail":Lcom/tudou/detail/vo/SliderInfo;
    invoke-direct {p0, v0}, Lcom/tudou/detail/widget/VideoSliderBar;->makeAndAddItem(Lcom/tudou/detail/vo/SliderInfo;)V

    goto :goto_0

    .line 80
    .end local v0    # "detail":Lcom/tudou/detail/vo/SliderInfo;
    :cond_0
    return-void
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 6
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 100
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnPodcastUser:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v0

    .line 102
    .local v0, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v1, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnPodcastUser:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v3, v3, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    new-instance v5, Lcom/tudou/detail/widget/VideoSliderBar$1;

    invoke-direct {v5, p0}, Lcom/tudou/detail/widget/VideoSliderBar$1;-><init>(Lcom/tudou/detail/widget/VideoSliderBar;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 116
    .end local v0    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    return-void
.end method

.method public setVideoState(Lcom/tudou/detail/vo/VideoState;)V
    .locals 3
    .param p1, "state"    # Lcom/tudou/detail/vo/VideoState;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    .line 120
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v1, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoState;->getDigNum()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoState;->getDigNum()I

    move-result v0

    invoke-static {v0}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v2, v2, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mSliderDetail:Lcom/tudou/detail/vo/SliderInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoState;->getW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar;->mBtnDig:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :cond_0
    return-void

    .line 121
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
