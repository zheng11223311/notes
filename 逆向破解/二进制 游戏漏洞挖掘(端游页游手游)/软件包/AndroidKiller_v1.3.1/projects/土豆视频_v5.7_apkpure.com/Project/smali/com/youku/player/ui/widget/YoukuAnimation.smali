.class public Lcom/youku/player/ui/widget/YoukuAnimation;
.super Ljava/lang/Object;
.source "YoukuAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityClose(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Lcom/youku/android/player/R$anim;->yp_activity_close_enter:I

    sget v1, Lcom/youku/android/player/R$anim;->yp_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 28
    return-void
.end method

.method public static activityOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Lcom/youku/android/player/R$anim;->yp_activity_open_enter:I

    sget v1, Lcom/youku/android/player/R$anim;->yp_activity_open_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 23
    return-void
.end method

.method public static obtain(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method
