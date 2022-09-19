.class public Lcom/tudou/ui/fragment/VipPrivilegeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "VipPrivilegeFragment.java"


# static fields
.field public static mRefreshKey:Z

.field private static mWr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/VipPrivilegeFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Landroid/widget/TextView;

.field private left_days:Landroid/widget/TextView;

.field private mBuyTipsTv:Landroid/widget/TextView;

.field private mRoot:Landroid/view/View;

.field private mTipsLayout:Landroid/view/View;

.field private mVipDisableLayout:Landroid/view/View;

.field private mVipEnableLayout:Landroid/view/View;

.field private mVipImg:Landroid/widget/ImageView;

.field private mVipStatusTv:Landroid/widget/TextView;

.field private mVipYearImg:Landroid/widget/ImageView;

.field private username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->refreshVipStatus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->username:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/widget/TextView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->setRightDrawable(Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->desc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->left_days:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildView()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getVipVideos()V

    .line 71
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipStatusTv:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mBuyTipsTv:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0df9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mTipsLayout:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipDisableLayout:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipEnableLayout:Landroid/view/View;

    .line 76
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipDisableLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipEnableLayout:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getVipStatus(Landroid/view/View;Landroid/view/View;)V

    .line 96
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipStatusTv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u9ec4\u91d1\u4f1a\u5458\u5373\u53ef\u7545\u4eab\u5168\u7ad9\u8d85\u6e05\u5f71\u89c6\uff0c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mBuyTipsTv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u9a6c\u4e0a\u5f00\u901a>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipDisableLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipEnableLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipDisableLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static convertDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "endtime"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v8, ""

    .line 246
    .local v8, "ret":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 250
    .local v4, "end":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 251
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 253
    .local v6, "l":J
    const-wide/32 v10, 0x5265c00

    div-long v0, v6, v10

    .line 254
    .local v0, "day":J
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_0

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u5929"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 262
    .end local v0    # "day":J
    .end local v4    # "end":Ljava/util/Date;
    .end local v5    # "now":Ljava/util/Date;
    .end local v6    # "l":J
    :cond_0
    :goto_0
    return-object v8

    .line 258
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVipStatus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "vipDisableLayout"    # Landroid/view/View;
    .param p2, "vipEnableLayout"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/view/View;Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V

    .line 121
    return-void
.end method

.method private getVipVideos()V
    .locals 7

    .prologue
    .line 100
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "skip_info"

    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getVipFilterTag()Lcom/youku/vo/SkipInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v5, "show_title"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 105
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 106
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;-><init>()V

    .line 107
    .local v1, "fragment":Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    const v5, 0x7f0c0236

    invoke-virtual {v3, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "fragment":Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .end local v2    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->left_days:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V

    .line 226
    return-void
.end method

.method private initVipViews()V
    .locals 10

    .prologue
    .line 146
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c0229

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 148
    .local v3, "pic":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    .line 149
    .local v0, "activity":Lcom/tudou/ui/activity/BaseActivity;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 151
    .local v1, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 156
    .end local v1    # "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    :cond_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c022b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 158
    .local v5, "vuserimg":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    iget-boolean v6, v6, Lcom/youku/vo/UserBean;->isVuser:Z

    if-eqz v6, :cond_1

    .line 159
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :goto_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c022d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->username:Landroid/widget/TextView;

    .line 165
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c00a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipImg:Landroid/widget/ImageView;

    .line 166
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c022e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipYearImg:Landroid/widget/ImageView;

    .line 167
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->username:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8d26\u53f7 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c0230

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->left_days:Landroid/widget/TextView;

    .line 171
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c0231

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, "pay":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v7, 0x7f0c022f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->desc:Landroid/widget/TextView;

    .line 175
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    .line 176
    .local v4, "userBean":Lcom/youku/vo/UserBean;
    iget-wide v6, v4, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v8, 0x186a2

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 177
    const-string/jumbo v6, "\u7eed\u8d39 >"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    new-instance v6, Lcom/tudou/ui/fragment/VipPrivilegeFragment$4;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$4;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void

    .line 161
    .end local v2    # "pay":Landroid/widget/TextView;
    .end local v4    # "userBean":Lcom/youku/vo/UserBean;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 179
    .restart local v2    # "pay":Landroid/widget/TextView;
    .restart local v4    # "userBean":Lcom/youku/vo/UserBean;
    :cond_2
    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458 >"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private refreshVipStatus(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "vipDisableLayout"    # Landroid/view/View;
    .param p2, "vipEnableLayout"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 124
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-wide v0, v0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v2, 0x186a2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-wide v0, v0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v2, 0x186a4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->initVipViews()V

    .line 126
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->initData()V

    .line 127
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipStatusTv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u9ec4\u91d1\u4f1a\u5458\u5373\u53ef\u7545\u4eab\u5168\u7ad9\u8d85\u6e05\u5f71\u89c6\uff0c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mBuyTipsTv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRightDrawable(Landroid/widget/TextView;II)V
    .locals 3
    .param p1, "state"    # Landroid/widget/TextView;
    .param p2, "res"    # I
    .param p3, "yearRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    iget v1, v1, Lcom/youku/vo/UserBean;->vip_grade:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget v0, v0, Lcom/youku/vo/UserBean;->vip_year:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipYearImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipYearImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mVipYearImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRightDrawableDisabled(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "state"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-void
.end method

.method public static setTipsLayoutVisibility(Z)V
    .locals 3
    .param p0, "visibility"    # Z

    .prologue
    .line 289
    sget-object v1, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mWr:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mWr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    .line 291
    .local v0, "fragment":Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mTipsLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 292
    if-eqz p0, :cond_1

    .line 293
    iget-object v1, v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mTipsLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .end local v0    # "fragment":Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local v0    # "fragment":Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    :cond_1
    iget-object v1, v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mTipsLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public initTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    iget-object v4, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v5, 0x7f0c06b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 267
    .local v3, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    const-string/jumbo v4, "\u4f18\u9177\u571f\u8c46\u4f1a\u5458"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v5, 0x7f0c024f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    .local v0, "mBackView":Landroid/widget/ImageView;
    const v4, 0x7f020a66

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    new-instance v4, Lcom/tudou/ui/fragment/VipPrivilegeFragment$6;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment$6;-><init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v5, 0x7f0c0223

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 280
    .local v1, "mStateTextView":Landroid/widget/TextView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v4, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    const v5, 0x7f0c0094

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "statusBarView":Landroid/view/View;
    invoke-static {v2}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mWr:Ljava/lang/ref/WeakReference;

    .line 54
    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->initTitle()V

    .line 56
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->buildView()V

    .line 57
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    .line 64
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->buildView()V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 67
    return-void
.end method
