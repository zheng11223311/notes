.class public Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout$1;
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "HeaderLoadingLayout"


# instance fields
.field public isBack:Z

.field isDown:Z

.field public final isShowCaiDan:Z

.field public mCaiDangBg:Landroid/widget/ImageView;

.field private mDownAnimation:Landroid/view/animation/RotateAnimation;

.field public mHeaderBg:Landroid/widget/ImageView;

.field private final mHeaderImage:Landroid/widget/ImageView;

.field private final mHeaderImageMatrix:Landroid/graphics/Matrix;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mRotationPivotX:F

.field private mRotationPivotY:F

.field private mUpAnimation:Landroid/view/animation/RotateAnimation;

.field private mUseIntrinisicAnimation:Z

.field private mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isDown:Z

    .line 68
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 69
    const/16 v11, 0x10

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setGravity(I)V

    .line 70
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 72
    const/4 v5, 0x0

    .line 74
    .local v5, "isSetText":Z
    sget-boolean v11, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    iput-boolean v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    .line 76
    iget-boolean v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-eqz v11, :cond_a

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030270

    invoke-virtual {v11, v12, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    const v11, 0x7f0c0c1c

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    .line 81
    const v11, 0x7f0c0c1d

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderBg:Landroid/widget/ImageView;

    .line 83
    const v11, 0x7f0c0020

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 84
    const v11, 0x7f0c0023

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 86
    const/4 v8, 0x0

    .line 88
    .local v8, "refreshPage":Lcom/youku/vo/Initial$RefreshPage;
    sget-object v11, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v11, :cond_0

    .line 89
    sget-object v11, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v8, v11, Lcom/youku/vo/Initial;->refresh_page:Lcom/youku/vo/Initial$RefreshPage;

    .line 91
    :cond_0
    sget-boolean v11, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    if-eqz v11, :cond_9

    if-eqz v8, :cond_9

    .line 96
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    sget v12, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    const-string v11, "HeaderLoadingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image_1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/youku/vo/Initial$RefreshPage;->image_1:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v11, "HeaderLoadingLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image_2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/youku/vo/Initial$RefreshPage;->image_2:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, p1

    .line 103
    check-cast v11, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v11}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    iget-object v12, v8, Lcom/youku/vo/Initial$RefreshPage;->image_1:Ljava/lang/String;

    iget-object v13, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderBg:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object v11, p1

    .line 104
    check-cast v11, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v11}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    iget-object v12, v8, Lcom/youku/vo/Initial$RefreshPage;->image_2:Ljava/lang/String;

    iget-object v13, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 106
    :try_start_0
    iget-object v11, v8, Lcom/youku/vo/Initial$RefreshPage;->content:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 107
    iget-object v11, v8, Lcom/youku/vo/Initial$RefreshPage;->content:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 108
    iget-object v11, v8, Lcom/youku/vo/Initial$RefreshPage;->content:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v5, 0x1

    .line 129
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "refreshPage":Lcom/youku/vo/Initial$RefreshPage;
    :goto_0
    sget-object v11, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual/range {p2 .. p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 137
    if-nez v5, :cond_1

    .line 138
    const v11, 0x7f0d0311

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 139
    const v11, 0x7f0d0313

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 140
    const v11, 0x7f0d0312

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 145
    :cond_1
    :goto_1
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 146
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 147
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_b

    .end local v2    # "colors":Landroid/content/res/ColorStateList;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    :cond_2
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 151
    .restart local v2    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_c

    .end local v2    # "colors":Landroid/content/res/ColorStateList;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_3
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 154
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 161
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 162
    .local v9, "styleID":Landroid/util/TypedValue;
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 163
    iget v11, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setTextAppearance(I)V

    .line 165
    .end local v9    # "styleID":Landroid/util/TypedValue;
    :cond_5
    const/16 v11, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 166
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 167
    .restart local v9    # "styleID":Landroid/util/TypedValue;
    const/16 v11, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 168
    iget v11, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setSubTextAppearance(I)V

    .line 172
    .end local v9    # "styleID":Landroid/util/TypedValue;
    :cond_6
    const/4 v4, 0x0

    .line 173
    .local v4, "imageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 174
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 178
    :cond_7
    if-nez v4, :cond_8

    .line 179
    iget-boolean v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-eqz v11, :cond_d

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02006b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    :cond_8
    :goto_4
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->reset()V

    .line 188
    return-void

    .line 110
    .end local v4    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "refreshPage":Lcom/youku/vo/Initial$RefreshPage;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020531

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 119
    .end local v8    # "refreshPage":Lcom/youku/vo/Initial$RefreshPage;
    :cond_a
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 120
    .local v10, "tbPadding":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 121
    .local v6, "lrPadding":I
    invoke-virtual {p0, v6, v10, v6, v10}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setPadding(IIII)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03026e

    invoke-virtual {v11, v12, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    const v11, 0x7f0c0023

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 125
    const v11, 0x7f0c0020

    invoke-virtual {p0, v11}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 126
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->initAnimation()V

    goto/16 :goto_0

    .line 131
    .end local v6    # "lrPadding":I
    .end local v10    # "tbPadding":I
    :pswitch_0
    const v11, 0x7f0d030e

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 132
    const v11, 0x7f0d0310

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 133
    const v11, 0x7f0d030f

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 147
    .restart local v2    # "colors":Landroid/content/res/ColorStateList;
    :cond_b
    const/high16 v11, -0x1000000

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_2

    .line 151
    :cond_c
    const/high16 v11, -0x1000000

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_3

    .line 182
    .end local v2    # "colors":Landroid/content/res/ColorStateList;
    .restart local v4    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020171

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_4

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xfa

    const/high16 v8, -0x3ccc0000    # -180.0f

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 202
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 203
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 206
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 208
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v2, v8

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    .line 209
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 213
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v8

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    .line 214
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 215
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 216
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 217
    return-void
.end method

.method private resetImageRotation()V
    .locals 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUseIntrinisicAnimation:Z

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isDown:Z

    .line 348
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 350
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 353
    :cond_0
    return-void
.end method

.method private setCaiDanWidth(II)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 193
    sget v2, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    .line 195
    .local v2, "windoWidth":I
    mul-int v3, v2, p1

    div-int v1, v3, p2

    .line 196
    .local v1, "viewHeight":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mCaiDangBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
.end method

.method private testAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v8, 0x43b38000    # 359.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 356
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-direct {v0, v8, v6, v3, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 358
    .local v0, "mAnimationRoate":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 360
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 361
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 363
    new-instance v1, Landroid/view/animation/RotateAnimation;

    invoke-direct {v1, v6, v8, v7, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 365
    .local v1, "mAnimationRoate2":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 366
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 367
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 368
    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 369
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 370
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 371
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 374
    return-void
.end method


# virtual methods
.method public onPullY(F)V
    .locals 4
    .param p1, "scaleOfHeight"    # F

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUseIntrinisicAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isDown:Z

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isDown:Z

    .line 339
    const-string v0, "test1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPullY scaleOfHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotationPivotX:F

    iget v3, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotationPivotY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 341
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 343
    :cond_0
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "LoadingLayout"

    const-string v1, "pullToRefresh"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 240
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x7f020812

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isBack:Z

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isBack:Z

    .line 248
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_1

    .line 249
    const-string v0, "LoadingLayout"

    const-string v1, "PULL_DOWN_TO_REFRESH mDownAnimation"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :cond_1
    return-void
.end method

.method public refreshing()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 275
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-nez v0, :cond_2

    .line 283
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUseIntrinisicAnimation:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 291
    :goto_1
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->testAnimation()V

    goto :goto_1
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "LoadingLayout"

    const-string v1, "releaseToRefresh"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->isShowCaiDan:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 261
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUpAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mDownAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "LoadingLayout"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->pullToRefresh()V

    .line 222
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUseIntrinisicAnimation:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->resetImageRotation()V

    .line 231
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 321
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotationPivotX:F

    .line 325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRotationPivotY:F

    .line 328
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mUseIntrinisicAnimation:Z

    .line 329
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 271
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 295
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 299
    return-void
.end method

.method public setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 332
    return-void
.end method

.method public setSubTextAppearance(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 317
    return-void
.end method

.method public setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 306
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 314
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 309
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 303
    return-void
.end method
