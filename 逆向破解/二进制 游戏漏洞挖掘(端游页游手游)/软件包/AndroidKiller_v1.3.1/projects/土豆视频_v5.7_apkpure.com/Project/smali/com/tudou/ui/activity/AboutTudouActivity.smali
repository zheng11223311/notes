.class public Lcom/tudou/ui/activity/AboutTudouActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "AboutTudouActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field private guanyu_txt:Landroid/widget/TextView;

.field private img_back:Landroid/widget/ImageView;

.field private mBtnPhone:Landroid/view/View;

.field private mBtnQQ:Landroid/view/View;

.field private mBtnSina:Landroid/view/View;

.field private mBtnWeiXin:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mVipPhoneBtn:Landroid/view/View;

.field private tv_tudou_web_site:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    const v3, 0x7f0c0094

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 67
    const v3, 0x7f0c06b1

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    const v3, 0x7f0d0250

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v3, 0x7f0c024f

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    new-instance v3, Lcom/tudou/ui/activity/AboutTudouActivity$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$1;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 89
    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnSina:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnSina:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$2;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnWeiXin:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnWeiXin:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$3;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnPhone:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnPhone:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$4;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mVipPhoneBtn:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mVipPhoneBtn:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$5;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->guanyu_txt:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->guanyu_txt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u571f\u8c46\u89c6\u9891   V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v0, 0x7f0c00d5

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnQQ:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mBtnQQ:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$6;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/activity/AboutTudouActivity$7;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/AboutTudouActivity$7;-><init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mAjust:Z

    .line 52
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AboutTudouActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/tudou/ui/activity/AboutTudouActivity;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/tudou/ui/activity/AboutTudouActivity;->initTitle()V

    .line 57
    invoke-direct {p0}, Lcom/tudou/ui/activity/AboutTudouActivity;->initViews()V

    .line 58
    return-void
.end method
