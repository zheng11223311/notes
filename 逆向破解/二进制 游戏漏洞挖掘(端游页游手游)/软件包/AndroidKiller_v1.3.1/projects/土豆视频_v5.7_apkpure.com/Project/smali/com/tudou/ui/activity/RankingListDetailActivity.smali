.class public Lcom/tudou/ui/activity/RankingListDetailActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "RankingListDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/RankingListDetailActivity;->requestWindowFeature(I)Z

    .line 13
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/RankingListDetailActivity;->setContentView(I)V

    .line 14
    return-void
.end method
