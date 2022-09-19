.class public Lcom/youku/fullscreen/SystemUiHiderBase;
.super Lcom/youku/fullscreen/SystemUiHider;
.source "SystemUiHiderBase.java"


# instance fields
.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/fullscreen/SystemUiHider;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mVisible:Z

    .line 24
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mVisible:Z

    return v0
.end method

.method public setImmersiveMode()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    const/16 v1, 0x300

    .line 33
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v3}, Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 66
    iput-boolean v3, p0, Lcom/youku/fullscreen/SystemUiHiderBase;->mVisible:Z

    .line 67
    return-void
.end method
