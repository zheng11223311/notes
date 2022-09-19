.class public abstract Lcom/youku/fullscreen/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/youku/fullscreen/SystemUiHider$1;

    invoke-direct {v0}, Lcom/youku/fullscreen/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/youku/fullscreen/SystemUiHider;->sDummyListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/youku/fullscreen/SystemUiHider;->sDummyListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/youku/fullscreen/SystemUiHider;->mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    .line 109
    iput-object p1, p0, Lcom/youku/fullscreen/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lcom/youku/fullscreen/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 111
    iput p3, p0, Lcom/youku/fullscreen/SystemUiHider;->mFlags:I

    .line 112
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/youku/fullscreen/SystemUiHider;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 102
    new-instance v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/youku/fullscreen/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/fullscreen/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHider;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setImmersiveMode()V
.end method

.method public setOnVisibilityChangeListener(Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    sget-object p1, Lcom/youku/fullscreen/SystemUiHider;->sDummyListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/youku/fullscreen/SystemUiHider;->mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    .line 159
    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/youku/fullscreen/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/youku/fullscreen/SystemUiHider;->hide()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/youku/fullscreen/SystemUiHider;->show()V

    goto :goto_0
.end method
