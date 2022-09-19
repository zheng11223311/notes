.class public Lcom/tudou/ui/activity/ChannelDetailActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "ChannelDetailActivity.java"


# instance fields
.field private cid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    .line 19
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/activity/ChannelDetailActivity;->mAjust:Z

    .line 20
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/ChannelDetailActivity;->requestWindowFeature(I)Z

    .line 22
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ChannelDetailActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ChannelDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0302f4

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 26
    const v2, 0x7f0c024f

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    const v2, 0x7f0c0d06

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ChannelDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/activity/ChannelDetailActivity;->cid:I

    .line 32
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "mCurrentTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ChannelDetailActivity;->getTitleText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
