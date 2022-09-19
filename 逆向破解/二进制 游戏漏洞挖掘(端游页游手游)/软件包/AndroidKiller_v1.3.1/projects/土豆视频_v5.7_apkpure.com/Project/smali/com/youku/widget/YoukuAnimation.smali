.class public Lcom/youku/widget/YoukuAnimation;
.super Ljava/lang/Object;
.source "YoukuAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityClose(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v0, 0x7f040006

    const v1, 0x7f04000c

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;II)V

    .line 29
    return-void
.end method

.method public static activityClose(Landroid/content/Context;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 36
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 38
    return-void
.end method

.method public static activityGuideClose(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const v0, 0x7f040007

    const v1, 0x7f04000b

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;II)V

    .line 33
    return-void
.end method

.method public static activityOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f040007

    const v1, 0x7f04000b

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;II)V

    .line 20
    return-void
.end method

.method public static activityOpen(Landroid/content/Context;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 23
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 25
    return-void
.end method

.method public static obtain(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method
