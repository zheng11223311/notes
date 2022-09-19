.class public Lcom/tudou/ui/activity/MyTicketsActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "MyTicketsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MyTicketsActivity;->requestWindowFeature(I)Z

    .line 16
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MyTicketsActivity;->setContentView(I)V

    .line 17
    return-void
.end method
