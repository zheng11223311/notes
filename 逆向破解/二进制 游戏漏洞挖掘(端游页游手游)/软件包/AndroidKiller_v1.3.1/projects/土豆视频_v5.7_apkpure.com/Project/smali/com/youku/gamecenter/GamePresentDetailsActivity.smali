.class public Lcom/youku/gamecenter/GamePresentDetailsActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GamePresentDetailsActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentInfoService$onPresentInfoServiceListener;
.implements Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mEndTime_present:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLimitTime:Landroid/widget/TextView;

.field private mLimitTime_title:Landroid/widget/TextView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPresentContent:Landroid/widget/TextView;

.field private mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

.field private mPresentId:Ljava/lang/String;

.field private mProgressView:Lcom/youku/gamecenter/widgets/ProgressView;

.field private mRemainder:Landroid/widget/TextView;

.field private mStartTime:J

.field private mStartTime_present:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUsage:Landroid/widget/TextView;

.field private presentInfo:Lcom/youku/gamecenter/present/PresentInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 60
    const-string v0, "GameCenter"

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->TAG:Ljava/lang/String;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Lcom/youku/gamecenter/present/PresentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Lcom/youku/gamecenter/present/PresentButtonHelper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GamePresentDetailsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->fetchPresentInfoById(Ljava/lang/String;)V

    return-void
.end method

.method private fetchPresentInfoById(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 133
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->showFailed()V

    .line 137
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->showNetTipsAutomatic()V

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 144
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getPresentById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetailPageUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentInfoService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetPresentInfoService;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentInfoService;
    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetPresentInfoService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->addOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 109
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity$1;-><init>(Lcom/youku/gamecenter/GamePresentDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/gamecenter/GamePresentDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity$2;-><init>(Lcom/youku/gamecenter/GamePresentDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private initviews()V
    .locals 6

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "mThemeType":I
    const/4 v1, 0x6

    .line 155
    .local v1, "mProductId":I
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterThemeType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 160
    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterProductId:I

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    sput v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    .line 168
    sget v3, Lcom/youku/gamecenter/R$id;->present_detail_parent:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 169
    sget v3, Lcom/youku/gamecenter/R$id;->present_content_layout:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 171
    sget v3, Lcom/youku/gamecenter/R$id;->present_game_icon:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mIcon:Landroid/widget/ImageView;

    .line 172
    sget v3, Lcom/youku/gamecenter/R$id;->present_title:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mTitle:Landroid/widget/TextView;

    .line 173
    sget v3, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mProgressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 174
    sget v3, Lcom/youku/gamecenter/R$id;->present_limit_time_end:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLimitTime_title:Landroid/widget/TextView;

    .line 175
    sget v3, Lcom/youku/gamecenter/R$id;->present_remainder:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mRemainder:Landroid/widget/TextView;

    .line 176
    sget v3, Lcom/youku/gamecenter/R$id;->present_get_button:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mButton:Landroid/widget/Button;

    .line 178
    sget v3, Lcom/youku/gamecenter/R$id;->present_start_time:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime_present:Landroid/widget/TextView;

    .line 179
    sget v3, Lcom/youku/gamecenter/R$id;->present_end_time:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mEndTime_present:Landroid/widget/TextView;

    .line 180
    sget v3, Lcom/youku/gamecenter/R$id;->present_content:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentContent:Landroid/widget/TextView;

    .line 181
    sget v3, Lcom/youku/gamecenter/R$id;->present_limit_time_content:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLimitTime:Landroid/widget/TextView;

    .line 182
    sget v3, Lcom/youku/gamecenter/R$id;->present_usage_content:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mUsage:Landroid/widget/TextView;

    .line 184
    new-instance v3, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 187
    sget v3, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 188
    sget v3, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 190
    return-void

    .line 164
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private loadDatas()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "presentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "presentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentId:Ljava/lang/String;

    .line 92
    :cond_0
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPackageName:Ljava/lang/String;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->fetchPresentInfoById(Ljava/lang/String;)V

    .line 98
    return-void

    .line 101
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Launch GamePresentDetailsActivity the intent need putExtra presentId!"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setPresentStatus(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setPresentButton(Landroid/widget/Button;Lcom/youku/gamecenter/present/PresentStatus;)V

    .line 280
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mProgressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 281
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mRemainder:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_remainder:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method private setUIDatas()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->app_icon:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mProgressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v5}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 198
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLimitTime_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_get_time_end:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/present/PresentInfo;->end_time:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime_present:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_start_time:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/present/PresentInfo;->start_time:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mEndTime_present:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_end_time:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/present/PresentInfo;->end_time:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLimitTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_limit_time:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/present/PresentInfo;->use_start_time:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/present/PresentInfo;->use_end_time:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mUsage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->instruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setPresentStatus(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 214
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private showFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->trackPageLoad()V

    .line 233
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 234
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private trackPageLoad()V
    .locals 9

    .prologue
    .line 239
    const-string/jumbo v2, "\u793c\u5305\u8be6\u60c5\u9875\u52a0\u8f7d"

    const-string v3, "presentdetailLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u793c\u5305\u8be6\u60c5"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 241
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime:J

    .line 242
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "\u793c\u5305\u8be6\u60c5"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mStartTime:J

    .line 75
    invoke-static {}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getInstance()Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 77
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->initviews()V

    .line 79
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->loadDatas()V

    .line 81
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->initListener()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->removeOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 267
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 0
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->showFailed()V

    .line 247
    return-void
.end method

.method public onPresentButtonClick(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mPresentId:Ljava/lang/String;

    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setPresentStatus(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->trackPageLoad()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 255
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity;->presentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    .line 259
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setUIDatas()V

    .line 261
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_present_details:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->setContentView(I)V

    .line 222
    return-void
.end method

.method public setPresentButton(Landroid/widget/Button;Lcom/youku/gamecenter/present/PresentStatus;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "status"    # Lcom/youku/gamecenter/present/PresentStatus;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-boolean v0, p2, Lcom/youku/gamecenter/present/PresentStatus;->clickable:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 293
    return-void
.end method
