.class public Lcom/youku/fullscreen/SystemUiHiderHoneycomb;
.super Lcom/youku/fullscreen/SystemUiHiderBase;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mImmersiveFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/fullscreen/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 41
    iput-boolean v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mVisible:Z

    .line 112
    new-instance v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;-><init>(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)V

    iput-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 52
    iput v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 53
    iput v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 55
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 61
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x404

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 65
    :cond_0
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    .line 67
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 68
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x202

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 70
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mTestFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 73
    :cond_1
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mImmersiveFlags:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    .prologue
    .line 15
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mTestFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/fullscreen/SystemUiHiderHoneycomb;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    .prologue
    .line 15
    iget v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mHideFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->setImmersiveMode()V

    .line 90
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setImmersiveMode()V
    .locals 2

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mImmersiveFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 81
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mShowFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
