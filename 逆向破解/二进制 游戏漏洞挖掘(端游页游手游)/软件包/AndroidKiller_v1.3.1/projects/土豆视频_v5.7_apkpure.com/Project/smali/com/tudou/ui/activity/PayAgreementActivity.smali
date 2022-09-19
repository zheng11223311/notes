.class public Lcom/tudou/ui/activity/PayAgreementActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "PayAgreementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 27
    const v3, 0x7f0c0221

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/PayAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0d00ae

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v3, 0x7f0c06b1

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/PayAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 31
    .local v2, "txt_title":Landroid/widget/TextView;
    const-string/jumbo v3, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v3, 0x7f0c024f

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/PayAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .local v0, "back":Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 49
    invoke-virtual {p0}, Lcom/tudou/ui/activity/PayAgreementActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 43
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/PayAgreementActivity;->finish()V

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/PayAgreementActivity;->finish()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_1
        0x7f0c00df -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/PayAgreementActivity;->requestWindowFeature(I)Z

    .line 20
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PayAgreementActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/ui/activity/PayAgreementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0302f3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 23
    invoke-direct {p0}, Lcom/tudou/ui/activity/PayAgreementActivity;->initView()V

    .line 24
    return-void
.end method
