.class public Lcom/youku/widget/AccountHeadView;
.super Landroid/widget/RelativeLayout;
.source "AccountHeadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isGoVipBuy:Z

.field private mBuyVipButton:Landroid/widget/TextView;

.field private mMessageImg:Landroid/widget/ImageView;

.field private mMssageIcon:Landroid/widget/ImageView;

.field private mSettingImg:Landroid/widget/ImageView;

.field private mUserIconBitmap:Landroid/graphics/Bitmap;

.field private mUserIconImg:Landroid/widget/ImageView;

.field private mUserNameTv:Landroid/widget/TextView;

.field private mUserVipStatusImg:Landroid/widget/ImageView;

.field private mVImg:Landroid/widget/ImageView;

.field private mVipYearImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/AccountHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/AccountHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->initViews()V

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/youku/widget/AccountHeadView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/AccountHeadView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/youku/widget/AccountHeadView;->mUserIconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/widget/AccountHeadView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/AccountHeadView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserIconImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/AccountHeadView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/AccountHeadView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onUserClick()V

    return-void
.end method

.method private goAccountIntroduction()V
    .locals 4

    .prologue
    .line 186
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/AccountIntroductionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "userIcon"

    iget-object v3, p0, Lcom/youku/widget/AccountHeadView;->mUserIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v2, v1, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 191
    return-void
.end method

.method private static goVipBuyActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/content/Context;

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method private static goVipPrivilegeActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/content/Context;

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/VipPrivilegeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    const v5, 0x7f0c009b

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    .line 79
    const v5, 0x7f0c0099

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    .line 80
    const v5, 0x7f0c0095

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mUserIconImg:Landroid/widget/ImageView;

    .line 81
    const v5, 0x7f0c009a

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    .line 82
    const v5, 0x7f0c009d

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mSettingImg:Landroid/widget/ImageView;

    .line 83
    const v5, 0x7f0c009e

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mMessageImg:Landroid/widget/ImageView;

    .line 84
    const v5, 0x7f0c009f

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mMssageIcon:Landroid/widget/ImageView;

    .line 85
    const v5, 0x7f0c009c

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    .line 86
    const v5, 0x7f0c0096

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/widget/AccountHeadView;->mVImg:Landroid/widget/ImageView;

    .line 87
    const v5, 0x7f0c00a0

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "collectionLayout":Landroid/view/View;
    const v5, 0x7f0c00a1

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, "uploadLayout":Landroid/view/View;
    const v5, 0x7f0c00a2

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "vipLayout":Landroid/view/View;
    iget-object v5, p0, Lcom/youku/widget/AccountHeadView;->mSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v5, p0, Lcom/youku/widget/AccountHeadView;->mMessageImg:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v5, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v5, p0, Lcom/youku/widget/AccountHeadView;->mUserIconImg:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v5, 0x7f0c0094

    invoke-virtual {p0, v5}, Lcom/youku/widget/AccountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "statusBarView":Landroid/view/View;
    invoke-static {v2}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method private onCollectClick()V
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 238
    :cond_0
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684\u6536\u85cf"

    const-string v3, "myChannel|myFavorite"

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/widget/AccountHeadView;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "gofav":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method private onMessageClick()V
    .locals 5

    .prologue
    .line 265
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mMssageIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mMssageIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|Message"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    const-string v2, "\u6211\u7684\u9875\u6d88\u606f\u4e2d\u5fc3\u70b9\u51fb\uff08\u5df2\u767b\u5f55\uff09"

    const-class v3, Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684-\u6d88\u606f"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 276
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/MessageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 279
    return-void

    .line 273
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "\u6211\u7684\u9875\u6d88\u606f\u4e2d\u5fc3\u70b9\u51fb\uff08\u672a\u767b\u5f55\uff09"

    const-class v3, Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684-\u6d88\u606f"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private onMoreClick()V
    .locals 4

    .prologue
    .line 255
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u8bbe\u7f6e\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684-\u8bbe\u7f6e"

    const-string v3, "myChannel|settings"

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/widget/AccountHeadView;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/MoreActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method private onUploadClick()V
    .locals 4

    .prologue
    .line 224
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u4e0a\u4f20\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684\u4e0a\u4f20"

    const-string v3, "myChannel|myUpload"

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/widget/AccountHeadView;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 227
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 228
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private onUserClick()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 299
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "user_icon_click"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v1, "go_login"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u767b\u5f55"

    const-string v3, "myChannel|login"

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/widget/AccountHeadView;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, "goLoginIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    const-string v1, "TAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static onVipClick(Landroid/content/Context;)V
    .locals 0
    .param p0, "aActivity"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/youku/widget/AccountHeadView;->goVipPrivilegeActivity(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private refreshHVipStatus(Lcom/youku/vo/UserBean;)V
    .locals 4
    .param p1, "userbean"    # Lcom/youku/vo/UserBean;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f0203ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p1, Lcom/youku/vo/UserBean;->vip_grade:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 361
    iget v0, p1, Lcom/youku/vo/UserBean;->vip_year:I

    if-ne v0, v3, :cond_0

    .line 362
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    const v1, 0x7f0203ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    const-string v1, "\u7eed\u8d39\u9ec4\u91d1\u4f1a\u5458 >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iput-boolean v3, p0, Lcom/youku/widget/AccountHeadView;->isGoVipBuy:Z

    .line 372
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshLVipStatus(Lcom/youku/vo/UserBean;)V
    .locals 4
    .param p1, "userbean"    # Lcom/youku/vo/UserBean;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f02057d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p1, Lcom/youku/vo/UserBean;->vip_grade:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 345
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    const v1, 0x7f02057f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget v0, p1, Lcom/youku/vo/UserBean;->vip_year:I

    if-ne v0, v3, :cond_0

    .line 347
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    const-string v1, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458 >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iput-boolean v3, p0, Lcom/youku/widget/AccountHeadView;->isGoVipBuy:Z

    .line 354
    return-void
.end method

.method private refreshNoVipStatus(Lcom/youku/vo/UserBean;)V
    .locals 3
    .param p1, "userbean"    # Lcom/youku/vo/UserBean;

    .prologue
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/AccountHeadView;->isGoVipBuy:Z

    .line 329
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f020620

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p1, Lcom/youku/vo/UserBean;->vip_grade:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 334
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    const-string v1, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458 >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method

.method public static scaleDownBitmap(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "photo"    # Landroid/graphics/Bitmap;
    .param p1, "newHeight"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    move v0, p1

    .line 400
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-double v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 402
    .local v1, "width":I
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 404
    return-object p0
.end method

.method private setNoVipTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 388
    return-void
.end method

.method private setVipTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 375
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020a27

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    .local v0, "drawableRight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 380
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0369

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 382
    .local v1, "padding":I
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 383
    return-void
.end method


# virtual methods
.method public getUserIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    const-string v0, "account_click_key"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->goAccountIntroduction()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onMessageClick()V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onMoreClick()V

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onCollectClick()V

    goto :goto_0

    .line 163
    :pswitch_5
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onUploadClick()V

    goto :goto_0

    .line 166
    :pswitch_6
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->onVipClick()V

    goto :goto_0

    .line 169
    :pswitch_7
    iget-boolean v0, p0, Lcom/youku/widget/AccountHeadView;->isGoVipBuy:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/AccountHeadView;->goVipBuyActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->onVipClick()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->onUserClick()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0095
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onVipClick()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 200
    :cond_0
    const-string v0, "\u4e2a\u4eba\u4e2d\u5fc3\u4f1a\u5458\u6807\u8bc6\u70b9\u51fb"

    const-string v1, "\u7279\u6743\u6309\u94ae"

    const-string v2, "myChannel|VipLog"

    invoke-virtual {p0, v0, v1, v2}, Lcom/youku/widget/AccountHeadView;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/AccountHeadView;->onVipClick(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method public refreshAccountInfo(Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 4
    .param p1, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 107
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    .line 108
    .local v1, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "nickName":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->refreshVipStatus()V

    .line 112
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/widget/AccountHeadView$1;

    invoke-direct {v3, p0}, Lcom/youku/widget/AccountHeadView$1;-><init>(Lcom/youku/widget/AccountHeadView;)V

    invoke-virtual {p1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 136
    iget-boolean v2, v1, Lcom/youku/vo/UserBean;->isVuser:Z

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mVImg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/youku/widget/AccountHeadView;->mVImg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshLoginLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 282
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    const-string v2, "\u9a6c\u4e0a\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0}, Lcom/youku/widget/AccountHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 284
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mVImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserIconImg:Landroid/widget/ImageView;

    const v2, 0x7f020172

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mBuyVipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/widget/AccountHeadView$2;

    invoke-direct {v2, p0}, Lcom/youku/widget/AccountHeadView$2;-><init>(Lcom/youku/widget/AccountHeadView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mVipYearImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public refreshNewMsgIcon(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mMssageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public refreshUserIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 391
    invoke-static {p1}, Lcom/youku/util/Util;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserIconBitmap:Landroid/graphics/Bitmap;

    .line 392
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserIconImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 393
    return-void
.end method

.method public refreshUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView;->mUserNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method public refreshVipStatus()V
    .locals 6

    .prologue
    .line 314
    iget-object v1, p0, Lcom/youku/widget/AccountHeadView;->mUserVipStatusImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 316
    .local v0, "userbean":Lcom/youku/vo/UserBean;
    invoke-direct {p0}, Lcom/youku/widget/AccountHeadView;->setNoVipTitle()V

    .line 317
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v4, 0x186a2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0, v0}, Lcom/youku/widget/AccountHeadView;->refreshHVipStatus(Lcom/youku/vo/UserBean;)V

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v4, 0x186a4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 320
    invoke-direct {p0, v0}, Lcom/youku/widget/AccountHeadView;->refreshLVipStatus(Lcom/youku/vo/UserBean;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, v0}, Lcom/youku/widget/AccountHeadView;->refreshNoVipStatus(Lcom/youku/vo/UserBean;)V

    goto :goto_0
.end method

.method public trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-class v1, Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 249
    return-void
.end method
