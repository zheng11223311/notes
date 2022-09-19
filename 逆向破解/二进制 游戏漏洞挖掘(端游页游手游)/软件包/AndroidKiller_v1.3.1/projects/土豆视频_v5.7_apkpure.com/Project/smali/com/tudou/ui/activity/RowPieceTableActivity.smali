.class public Lcom/tudou/ui/activity/RowPieceTableActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "RowPieceTableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/RowPieceTableActivity;->requestWindowFeature(I)Z

    .line 22
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/RowPieceTableActivity;->setContentView(I)V

    .line 23
    return-void
.end method
