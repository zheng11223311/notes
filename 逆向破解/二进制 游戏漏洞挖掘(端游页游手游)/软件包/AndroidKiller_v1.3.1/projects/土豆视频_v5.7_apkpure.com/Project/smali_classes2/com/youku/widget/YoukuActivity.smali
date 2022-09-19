.class public Lcom/youku/widget/YoukuActivity;
.super Landroid/app/Activity;
.source "YoukuActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 17
    invoke-static {p0}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;)V

    .line 18
    return-void
.end method
