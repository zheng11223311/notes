.class public Lcom/tudou/ui/fragment/HistoryManagerFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "HistoryManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field public static final ALL_CONTENT:I = 0x0

.field public static final ALL_HISTORY_NONE:I = 0x7d6

.field public static final ALL_HISTORY_NOT_NONE:I = 0x7d9

.field public static final DELETE:I = 0x7d4

.field public static final DELETE_ERROR:I = 0x7d5

.field public static final EPISODE_CONTENT:I = 0x1

.field public static final LOADING:I = 0x7d2

.field public static final LOAD_MORE:I = 0x7d3

.field public static TAG:Ljava/lang/String; = null

.field public static final UPDATE:I = 0x7d0

.field public static final UPDATE_ERROR:I = 0x7d1

.field public static final UPDATE_LOCAL:I = 0x7d7

.field public static final UPDATE_LOCAL_ERROR:I = 0x7d8

.field public static isNeedCache:Z

.field public static mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

.field private static mEditImg:Landroid/widget/ImageView;

.field public static mState:I

.field public static mViewPager:Lcom/youku/widget/ViewPager;

.field private static tab_layout:Landroid/view/View;

.field private static view_episode:Landroid/view/View;

.field private static view_ugc:Landroid/view/View;


# instance fields
.field private mBackImg:Landroid/widget/ImageView;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mEpisodeTab:Landroid/widget/TextView;

.field private mManagerView:Landroid/view/View;

.field private mOldState:I

.field public mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

.field private mScanningImg:Landroid/widget/ImageView;

.field private mTruncButton:Landroid/widget/TextView;

.field private mUGCTab:Landroid/widget/TextView;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "HistoryManagerFragment"

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    .line 42
    sput v1, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    .line 66
    sput-boolean v1, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mOldState:I

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/HistoryManagerFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryManagerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->deleteHistoryFromServer(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/HistoryManagerFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryManagerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->deleteHistoryFromLocal(IZ)V

    return-void
.end method

.method private changeBarState()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 399
    const v0, 0x7f0e0224

    .line 400
    .local v0, "select_state":I
    const v1, 0x7f0e0223

    .line 402
    .local v1, "unselect_state":I
    sget v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 421
    :goto_0
    sget v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    iput v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mOldState:I

    .line 422
    return-void

    .line 405
    :pswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEpisodeTab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 406
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mUGCTab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 407
    sget-object v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_episode:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    sget-object v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_ugc:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEpisodeTab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 414
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mUGCTab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 415
    sget-object v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_episode:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 416
    sget-object v2, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_ugc:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearPlayHistory(I)V
    .locals 4
    .param p1, "currentItem"    # I

    .prologue
    .line 259
    const v0, 0x7f0d02d5

    .line 261
    .local v0, "hintId":I
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;-><init>(Lcom/tudou/ui/fragment/HistoryManagerFragment;I)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/youku/util/Util;->alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlertPositive;I)V

    .line 274
    return-void
.end method

.method private deleteHistoryFromLocal(IZ)V
    .locals 2
    .param p1, "currentItem"    # I
    .param p2, "isClear"    # Z

    .prologue
    .line 318
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 320
    :pswitch_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHitoryFromLocal(ZI)V

    goto :goto_0

    .line 324
    :pswitch_1
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHitoryFromLocal(ZI)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deleteHistoryFromServer(IZ)V
    .locals 2
    .param p1, "currentItem"    # I
    .param p2, "isClear"    # Z

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 336
    :pswitch_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V

    goto :goto_0

    .line 340
    :pswitch_1
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deletePlayHistory(I)V
    .locals 4
    .param p1, "currentItem"    # I

    .prologue
    const v2, 0x7f0d02d7

    .line 278
    const v0, 0x7f0d02d6

    .line 280
    .local v0, "deleteHintId":I
    if-nez p1, :cond_0

    .line 281
    sget-object v1, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getSelectedItemSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 283
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 314
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 287
    sget-object v1, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getSelectedItemSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;-><init>(Lcom/tudou/ui/fragment/HistoryManagerFragment;I)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/youku/util/Util;->alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlertPositive;I)V

    goto :goto_0
.end method

.method private goScanning()V
    .locals 3

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zijunlin/Zxing/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method public static hideTabLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 175
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->tab_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 178
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mBackImg:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    .line 132
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mScanningImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mBackImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mScanningImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0505

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->tab_layout:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEpisodeTab:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mUGCTab:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEpisodeTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mUGCTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_episode:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_ugc:Landroid/view/View;

    .line 149
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_episode:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->view_ugc:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mTruncButton:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c0461

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mTruncButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    const v1, 0x7f0c050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/ViewPager;

    sput-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    .line 158
    new-instance v0, Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/HistoryPagerAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    .line 160
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, p0}, Lcom/youku/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 163
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    sget v1, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 165
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->changeBarState()V

    .line 166
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->setunEditableState()V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryPagerAdapter;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    goto :goto_0
.end method

.method private setEditableState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    const v1, 0x7f0207fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mScanningImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 377
    return-void
.end method

.method private showHint()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "showHint showConfirmDialog"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tabClick(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 387
    sput p1, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    .line 389
    sget v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mOldState:I

    if-ne v0, v1, :cond_0

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 394
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->changeBarState()V

    goto :goto_0
.end method

.method public static unHideTabLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->tab_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method


# virtual methods
.method public onBackPress()V
    .locals 4

    .prologue
    .line 482
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 484
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 485
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "currentTab"

    sget-object v3, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v3}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 189
    .local v6, "id":I
    sparse-switch v6, :sswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 192
    :sswitch_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v7

    .line 193
    .local v7, "tabId":I
    if-nez v7, :cond_0

    .line 194
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getPlayedHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->showHint()V

    goto :goto_0

    .line 201
    :cond_0
    if-ne v7, v9, :cond_1

    .line 202
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getPlayedHistorySize()I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->showHint()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->transformEditableState()V

    goto :goto_0

    .line 222
    .end local v7    # "tabId":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u5267\u96c6\u8bb0\u5f55\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u5267\u96c6\u8bb0\u5f55\u6309\u94ae\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 225
    invoke-direct {p0, v9}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->tabClick(I)V

    goto :goto_0

    .line 229
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u5168\u90e8\u8bb0\u5f55\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u5168\u90e8\u8bb0\u5f55\u6309\u94ae\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 232
    invoke-direct {p0, v8}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->tabClick(I)V

    goto :goto_0

    .line 236
    :sswitch_3
    sput-boolean v8, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 237
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u6e05\u7a7a\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u6e05\u7a7a\u6309\u94ae\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 240
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->clearPlayHistory(I)V

    goto/16 :goto_0

    .line 244
    :sswitch_4
    sput-boolean v8, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 245
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 248
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->deletePlayHistory(I)V

    goto/16 :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0461 -> :sswitch_4
        0x7f0c0463 -> :sswitch_0
        0x7f0c0507 -> :sswitch_2
        0x7f0c050a -> :sswitch_1
        0x7f0c050d -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->preferences:Landroid/content/SharedPreferences;

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "currentTab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sput-object p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    .line 122
    const v0, 0x7f030121

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->initView()V

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mManagerView:Landroid/view/View;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 431
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 432
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    const/4 v0, 0x0

    sput v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    .line 437
    :goto_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->changeBarState()V

    .line 439
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "tab"    # I

    .prologue
    .line 448
    const-string v0, "----------"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    packed-switch p1, :pswitch_data_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->clearPlayHistoryVideo()V

    .line 454
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "ALL_CONTENT testchanged"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 457
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->reLoad()V

    goto :goto_0

    .line 463
    :pswitch_1
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->clearPlayHistoryVideo()V

    .line 466
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "EPISODE_CONTENT testchanged"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 469
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->reLoad()V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 102
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 114
    return-void
.end method

.method public setunEditableState()V
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEditImg:Landroid/widget/ImageView;

    const v1, 0x7f0207fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mScanningImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 384
    return-void
.end method

.method public transformEditableState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryPagerAdapter;->getEditable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/tudou/adapter/HistoryPagerAdapter;->setEditable(Z)V

    .line 362
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mEpisodeTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryPagerAdapter;->getEditable()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mUGCTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryPagerAdapter;->getEditable()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 365
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mPagerAdapter:Lcom/tudou/adapter/HistoryPagerAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryPagerAdapter;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->setEditableState()V

    .line 370
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 361
    goto :goto_0

    :cond_1
    move v0, v2

    .line 362
    goto :goto_1

    :cond_2
    move v1, v2

    .line 363
    goto :goto_2

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->setunEditableState()V

    goto :goto_3
.end method
