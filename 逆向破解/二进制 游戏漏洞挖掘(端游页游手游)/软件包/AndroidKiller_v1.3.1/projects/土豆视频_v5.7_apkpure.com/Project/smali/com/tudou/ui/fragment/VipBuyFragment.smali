.class public Lcom/tudou/ui/fragment/VipBuyFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "VipBuyFragment.java"


# static fields
.field public static final AGREEMENT_URL:Ljava/lang/String; = "http://pay.tudou.com/agreement.html"

.field public static final GET_TRADE_INFO_FAILED:I = 0x493e4

.field public static final GET_TRADE_INFO_SUCCESS:I = 0x493e3

.field private static final GET_VIP_INFO_FAILED:I = 0x186a2

.field private static final GET_VIP_INFO_SUCCESS:I = 0x186a1

.field public static final REQUESTCODE:I = 0x4e22

.field public static final RESULTCODE:I = 0x4e21

.field public static mRefreshKey:Z


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private dataScrollView:Landroid/widget/ScrollView;

.field private finalpi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

.field private finalvipid:Ljava/lang/String;

.field private hintView:Lcom/youku/widget/HintView;

.field private img_donghua:Landroid/widget/ImageView;

.field private isServiceStarting:Z

.field private isVip:Z

.field isneedfesh:Z

.field private linear_vip_pay:Landroid/widget/LinearLayout;

.field private mGoVIPCard:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mRoot:Landroid/view/View;

.field private mTimer:Ljava/util/Timer;

.field private mTxtPhone:Landroid/widget/TextView;

.field private mVIPCard:Landroid/view/View;

.field private open_vip_tips:Landroid/widget/TextView;

.field private remain_days:Ljava/lang/String;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isVip:Z

    .line 75
    const-string v0, "3"

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalvipid:Ljava/lang/String;

    .line 90
    const-string v0, "XX\u5929"

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isServiceStarting:Z

    .line 94
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isneedfesh:Z

    .line 95
    new-instance v0, Lcom/tudou/ui/fragment/VipBuyFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$1;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;
    .param p1, "x1"    # Lcom/youku/vo/ListVipPayInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/VipBuyFragment;->setVipInfoData(Lcom/youku/vo/ListVipPayInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->dataScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/VipBuyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalvipid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/VipBuyFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isVip:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/VipBuyFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isVip:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/tudou/ui/fragment/VipBuyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->startRequestTradeSchedule()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->stopRequestTradeSchedule()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->initData()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VipBuyFragment;
    .param p1, "x1"    # Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalpi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    return-object p1
.end method

.method private buildView()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 168
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0db2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, "vipHelpHtml5TextView":Landroid/view/View;
    new-instance v5, Lcom/tudou/ui/fragment/VipBuyFragment$2;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$2;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c06b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    .line 176
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 177
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    iget-boolean v5, v3, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v5, :cond_2

    .line 178
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v8, 0x186a2

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u7eed\u8d39\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0d9e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->dataScrollView:Landroid/widget/ScrollView;

    .line 187
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->dataScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 188
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c024f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    .local v0, "cancel_img":Landroid/widget/ImageView;
    new-instance v5, Lcom/tudou/ui/fragment/VipBuyFragment$3;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$3;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    .line 198
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    const v6, 0x7f020a31

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 200
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c06fa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mVIPCard:Landroid/view/View;

    .line 201
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mVIPCard:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c06ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mGoVIPCard:Landroid/view/View;

    .line 207
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mVIPCard:Landroid/view/View;

    new-instance v6, Lcom/tudou/ui/fragment/VipBuyFragment$4;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$4;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTxtPhone:Landroid/widget/TextView;

    .line 216
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTxtPhone:Landroid/widget/TextView;

    new-instance v6, Lcom/tudou/ui/fragment/VipBuyFragment$5;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$5;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0daa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 224
    .local v2, "txt_agreement":Landroid/widget/TextView;
    new-instance v5, Lcom/tudou/ui/fragment/VipBuyFragment$6;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$6;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->linear_vip_pay:Landroid/widget/LinearLayout;

    .line 247
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c00dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/HintView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->hintView:Lcom/youku/widget/HintView;

    .line 248
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->hintView:Lcom/youku/widget/HintView;

    new-instance v6, Lcom/tudou/ui/fragment/VipBuyFragment$7;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$7;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0094

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 262
    return-void

    .line 180
    .end local v0    # "cancel_img":Landroid/widget/ImageView;
    .end local v1    # "statusBarView":Landroid/view/View;
    .end local v2    # "txt_agreement":Landroid/widget/TextView;
    :cond_1
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v8, 0x186a4

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 181
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 204
    .restart local v0    # "cancel_img":Landroid/widget/ImageView;
    :cond_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mVIPCard:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public static convertPrice(D)Ljava/lang/String;
    .locals 6
    .param p0, "price"    # D

    .prologue
    .line 376
    const-string v3, ""

    .line 378
    .local v3, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v4, p0, v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "p":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 385
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 381
    .restart local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "price"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v1, ""

    .line 366
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v2, v4

    .line 367
    .local v2, "p":D
    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/VipBuyFragment;->convertPrice(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 372
    .end local v1    # "ret":Ljava/lang/String;
    .end local v2    # "p":D
    :goto_0
    return-object v1

    .line 368
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertPriceYuan(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "price"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v2, v6

    .line 390
    .local v2, "p":D
    const-string v5, ""

    .line 392
    .local v5, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, v2, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "p1":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 399
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v4    # "p1":Ljava/lang/String;
    .end local v5    # "ret":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 395
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 403
    iget-object v3, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->dataScrollView:Landroid/widget/ScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getVipListInfoUrl()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "vipInfoUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 410
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/VipBuyFragment$9;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$9;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 448
    return-void
.end method

.method private setTips()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x186a4

    const-wide/32 v10, 0x186a2

    const v9, 0x7f0c06b1

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 461
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c06fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->open_vip_tips:Landroid/widget/TextView;

    .line 463
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0d9f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, "vip_tips":Landroid/view/View;
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 466
    .local v2, "txt_no_vip_tips":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 467
    .local v0, "txt_no_login_tips1":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v6, 0x7f0c0da3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 469
    .local v1, "txt_no_login_tips2":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 470
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 472
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 474
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 478
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    .line 482
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 483
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_0

    .line 484
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->open_vip_tips:Landroid/widget/TextView;

    const-string/jumbo v6, "\u7eed\u8d39\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u7eed\u8d39\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_0
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_3

    .line 495
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4eb2\uff0c\u60a8\u7684\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u8fc7\u671f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->startRequestTradeSchedule()V

    .line 545
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :goto_2
    return-void

    .line 486
    .restart local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_0
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v5, v6, v12

    if-nez v5, :cond_1

    .line 487
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->open_vip_tips:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->open_vip_tips:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :cond_2
    const-string/jumbo v5, "\u4eb2\uff0c\u60a8\u7684\u4f1a\u5458\u8fd8\u6709\u672a\u77e5\u5929\u6570\u5230\u671f\u256e(\u256f_\u2570)\u256d"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 500
    :cond_3
    iget-wide v6, v3, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v5, v6, v12

    if-nez v5, :cond_5

    .line 501
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4eb2\uff0c\u60a8\u7684\u767d\u94f6\u4f1a\u5458"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->remain_days:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u8fc7\u671f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 504
    :cond_4
    const-string/jumbo v5, "\u4eb2\uff0c\u60a8\u7684\u4f1a\u5458\u8fd8\u6709\u672a\u77e5\u5929\u6570\u5230\u671f\u256e(\u256f_\u2570)\u256d"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
    :cond_5
    const-string/jumbo v5, "\u4eb2,\u60a8\u8fd8\u4e0d\u662f\u9ec4\u91d1\u4f1a\u5458\u5466,\u9a6c\u4e0a\u5f00\u901a\u5427!"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 523
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_6
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    .line 524
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->open_vip_tips:Landroid/widget/TextView;

    const-string/jumbo v6, "\u5f00\u901a\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    new-instance v5, Lcom/tudou/ui/fragment/VipBuyFragment$10;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$10;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method private setVipInfoData(Lcom/youku/vo/ListVipPayInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/youku/vo/ListVipPayInfo;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->setTips()V

    .line 267
    if-eqz p1, :cond_0

    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/ListVipPayInfo$Result;

    iget-object v9, v9, Lcom/youku/vo/ListVipPayInfo$Result;->price_info:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/ListVipPayInfo$Result;

    iget-object v9, v9, Lcom/youku/vo/ListVipPayInfo$Result;->price_info:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 270
    :cond_0
    iget-object v9, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v10, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v9, v10}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 349
    :cond_1
    return-void

    .line 273
    :cond_2
    iget-object v9, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v9}, Lcom/youku/widget/HintView;->dismiss()V

    .line 274
    iget-object v9, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->linear_vip_pay:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/ListVipPayInfo$Result;

    iget-object v9, v9, Lcom/youku/vo/ListVipPayInfo$Result;->price_info:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0301c5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 279
    .local v4, "v":Landroid/view/View;
    const v9, 0x7f0c085c

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 281
    .local v5, "vip_buy":Landroid/view/View;
    const v9, 0x7f0c0860

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 284
    .local v1, "pay_vip_tips":Landroid/widget/TextView;
    iget-boolean v9, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isVip:Z

    if-eqz v9, :cond_5

    .line 285
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 286
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    iget-wide v10, v3, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v12, 0x186a2

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    .line 287
    const-string/jumbo v9, "\u7eed\u8d39 >"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_3
    :goto_1
    iget-object v9, p1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/ListVipPayInfo$Result;

    iget-object v9, v9, Lcom/youku/vo/ListVipPayInfo$Result;->price_info:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    .line 297
    .local v2, "pi":Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    new-instance v9, Lcom/tudou/ui/fragment/VipBuyFragment$8;

    invoke-direct {v9, p0, v2, p1}, Lcom/tudou/ui/fragment/VipBuyFragment$8;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;Lcom/youku/vo/ListVipPayInfo;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v9, 0x7f0c085d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 331
    .local v6, "vip_duration":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u4f1a\u5458"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v9, 0x7f0c085e

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 336
    .local v7, "vip_price_now":Landroid/widget/TextView;
    iget-object v9, v2, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->sale_price:Ljava/lang/String;

    invoke-static {v9}, Lcom/tudou/ui/fragment/VipBuyFragment;->convertPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v9, 0x7f0c085f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 341
    .local v8, "vip_price_old":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u539f\u4ef7 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->price:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Lcom/tudou/ui/fragment/VipBuyFragment;->convertPrice(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setFlags(I)V

    .line 344
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 346
    iget-object v9, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->linear_vip_pay:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 288
    .end local v2    # "pi":Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    .end local v6    # "vip_duration":Landroid/widget/TextView;
    .end local v7    # "vip_price_now":Landroid/widget/TextView;
    .end local v8    # "vip_price_old":Landroid/widget/TextView;
    .restart local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_4
    iget-wide v10, v3, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v12, 0x186a4

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 289
    const-string/jumbo v9, "\u5f00\u901a >"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 292
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_5
    const-string/jumbo v9, "\u5f00\u901a >"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private startRequestTradeSchedule()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3a98

    .line 563
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isServiceStarting:Z

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getLastTradeStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getLastTradeTime()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getLastTradeTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 575
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getLastTradeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTimer:Ljava/util/Timer;

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isServiceStarting:Z

    .line 580
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->updatePaySuccessUI()V

    .line 581
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tudou/ui/fragment/VipBuyFragment$11;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/VipBuyFragment$11;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private stopRequestTradeSchedule()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 593
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isServiceStarting:Z

    .line 594
    return-void
.end method

.method private updatePaySuccessUI()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f0c0da0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "txt_no_vip_tips":Landroid/widget/TextView;
    const-string/jumbo v1, "\u652f\u4ed8\u6210\u529f,\u6b63\u5728\u786e\u8ba4\u8ba2\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->img_donghua:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 162
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->txt_title:Landroid/widget/TextView;

    const-string/jumbo v2, "\u8ba2\u5355\u786e\u8ba4\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ifneedfesh"

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isneedfesh:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->isVip:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x4e21

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 551
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 552
    return-void

    .line 549
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    .line 150
    const v0, 0x7f030323

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    .line 151
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->buildView()V

    .line 152
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->initData()V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->stopRequestTradeSchedule()V

    .line 557
    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mTimer:Ljava/util/Timer;

    .line 558
    iput-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mHandler:Landroid/os/Handler;

    .line 559
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 560
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 452
    sget-boolean v0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    .line 454
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->initData()V

    .line 456
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 457
    return-void
.end method

.method public showVipBuyDialog(Z)V
    .locals 6
    .param p1, "isRetry"    # Z

    .prologue
    .line 353
    const-string/jumbo v1, "vip_buy_dialog"

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalpi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 357
    new-instance v0, Lcom/youku/widget/VipBuyDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalpi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iget-object v4, p0, Lcom/tudou/ui/fragment/VipBuyFragment;->finalvipid:Ljava/lang/String;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/youku/widget/VipBuyDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;Ljava/lang/String;Z)V

    .line 359
    .local v0, "dialog":Lcom/youku/widget/VipBuyDialog;
    invoke-virtual {v0}, Lcom/youku/widget/VipBuyDialog;->show()V

    goto :goto_0
.end method
