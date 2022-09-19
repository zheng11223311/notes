.class public Lcom/youku/widget/VipBuyDialog;
.super Landroid/app/Dialog;
.source "VipBuyDialog.java"


# instance fields
.field private agree:Z

.field private isRetry:Z

.field private mContext:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

.field private vipid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "pi"    # Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    .param p4, "vipid"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z

    .prologue
    .line 43
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/VipBuyDialog;->agree:Z

    .line 36
    const-string v0, "3"

    iput-object v0, p0, Lcom/youku/widget/VipBuyDialog;->vipid:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/VipBuyDialog;->isRetry:Z

    .line 44
    iput-object p1, p0, Lcom/youku/widget/VipBuyDialog;->mContext:Landroid/app/Activity;

    .line 45
    iput-object p3, p0, Lcom/youku/widget/VipBuyDialog;->pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    .line 46
    iput-object p4, p0, Lcom/youku/widget/VipBuyDialog;->vipid:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/youku/widget/VipBuyDialog;->mHandler:Landroid/os/Handler;

    .line 48
    iput-boolean p5, p0, Lcom/youku/widget/VipBuyDialog;->isRetry:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/VipBuyDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/VipBuyDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/youku/widget/VipBuyDialog;->agree:Z

    return v0
.end method

.method static synthetic access$102(Lcom/youku/widget/VipBuyDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/youku/widget/VipBuyDialog;->agree:Z

    return p1
.end method

.method static synthetic access$200(Lcom/youku/widget/VipBuyDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/VipBuyDialog;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog;->pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/VipBuyDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/VipBuyDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog;->vipid:Ljava/lang/String;

    return-object v0
.end method

.method private buildView()V
    .locals 8

    .prologue
    .line 59
    const v6, 0x7f0c0d91

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 62
    .local v3, "img_close":Landroid/widget/ImageView;
    new-instance v6, Lcom/youku/widget/VipBuyDialog$1;

    invoke-direct {v6, p0}, Lcom/youku/widget/VipBuyDialog$1;-><init>(Lcom/youku/widget/VipBuyDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v6, 0x7f0c085d

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "vip_duration":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/youku/widget/VipBuyDialog;->pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iget-object v6, v6, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v6, 0x7f0c0d94

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 78
    .local v4, "price":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/youku/widget/VipBuyDialog;->pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iget-object v6, v6, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->sale_price:Ljava/lang/String;

    invoke-static {v6}, Lcom/tudou/ui/fragment/VipBuyFragment;->convertPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v6, 0x7f0c0d9a

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "agreement_link":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 82
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 85
    new-instance v6, Lcom/youku/widget/VipBuyDialog$2;

    invoke-direct {v6, p0}, Lcom/youku/widget/VipBuyDialog$2;-><init>(Lcom/youku/widget/VipBuyDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v6, 0x7f0c0d9c

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, "btn_buy":Landroid/widget/TextView;
    const v6, 0x7f0c0d98

    invoke-virtual {p0, v6}, Lcom/youku/widget/VipBuyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, "agreement_agree":Landroid/widget/ImageView;
    new-instance v6, Lcom/youku/widget/VipBuyDialog$3;

    invoke-direct {v6, p0, v0, v2}, Lcom/youku/widget/VipBuyDialog$3;-><init>(Lcom/youku/widget/VipBuyDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-boolean v6, p0, Lcom/youku/widget/VipBuyDialog;->isRetry:Z

    if-eqz v6, :cond_0

    const-string v6, "\u91cd\u65b0\u8d2d\u4e70"

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v6, Lcom/youku/widget/VipBuyDialog$4;

    invoke-direct {v6, p0}, Lcom/youku/widget/VipBuyDialog$4;-><init>(Lcom/youku/widget/VipBuyDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void

    .line 117
    :cond_0
    const-string v6, "\u8d2d\u4e70"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030322

    invoke-virtual {p0, v0}, Lcom/youku/widget/VipBuyDialog;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/youku/widget/VipBuyDialog;->buildView()V

    .line 56
    return-void
.end method
