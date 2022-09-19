.class final Lde/keyboardsurfer/android/widget/crouton/Manager;
.super Landroid/os/Handler;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/keyboardsurfer/android/widget/crouton/Manager$Messages;
    }
.end annotation


# static fields
.field private static INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;


# instance fields
.field private final croutonQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lde/keyboardsurfer/android/widget/crouton/Crouton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lde/keyboardsurfer/android/widget/crouton/Manager;Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Manager;
    .param p1, "x1"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    return-void
.end method

.method private addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 7
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 193
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "croutonView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 200
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_2

    .line 201
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 205
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 206
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 207
    .local v2, "croutonViewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 208
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .end local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 225
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 226
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v3, :cond_0

    .line 227
    new-instance v5, Lde/keyboardsurfer/android/widget/crouton/Manager$1;

    invoke-direct {v5, p0, v1, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager$1;-><init>(Lde/keyboardsurfer/android/widget/crouton/Manager;Landroid/view/View;Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 210
    .end local v3    # "observer":Landroid/view/ViewTreeObserver;
    .restart local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 213
    .end local v2    # "croutonViewGroup":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    .line 217
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    move-object v5, v4

    .line 218
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v5, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 220
    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public static announceForAccessibilityCompat(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 436
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p0, :cond_0

    .line 439
    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 441
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 467
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    :goto_0
    return-void

    .line 449
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 450
    const/16 v2, 0x8

    .line 457
    .local v2, "eventType":I
    :goto_1
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 458
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const-class v3, Lde/keyboardsurfer/android/widget/crouton/Manager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 452
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "eventType":I
    :cond_3
    const/16 v2, 0x4000

    .restart local v2    # "eventType":I
    goto :goto_1
.end method

.method private calculateCroutonDuration(Lde/keyboardsurfer/android/widget/crouton/Crouton;)J
    .locals 4
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 112
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v2

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    int-to-long v0, v2

    .line 113
    .local v0, "croutonDuration":J
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 114
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 115
    return-wide v0
.end method

.method private displayCrouton()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 96
    .local v0, "currentCrouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 100
    :cond_2
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    const v1, -0x3dff8b23

    invoke-direct {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessage(Lde/keyboardsurfer/android/widget/crouton/Crouton;I)V

    .line 103
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onDisplayed()V

    goto :goto_0

    .line 107
    :cond_3
    const v1, 0xc2007

    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->calculateCroutonDuration(Lde/keyboardsurfer/android/widget/crouton/Crouton;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lde/keyboardsurfer/android/widget/crouton/Manager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Manager;

    invoke-direct {v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;-><init>()V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;

    .line 70
    :cond_0
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 271
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 272
    .local v0, "flags":Z
    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 276
    .end local v0    # "flags":Z
    :cond_0
    return-void
.end method

.method private handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 5
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v4, 0x4000000

    .line 258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 259
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 260
    .local v0, "flags":I
    const/high16 v1, 0x4000000

    .line 261
    .local v1, "translucentStatusFlag":I
    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    .line 262
    invoke-direct {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 265
    .end local v0    # "flags":I
    .end local v1    # "translucentStatusFlag":I
    :cond_0
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    .prologue
    .line 405
    const v0, -0x3dff8b23

    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    .line 406
    const v0, 0xc2007

    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    .line 407
    const v0, -0x3dff821f

    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    .line 408
    return-void
.end method

.method private removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 1
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 411
    const v0, -0x3dff8b23

    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 412
    const v0, 0xc2007

    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 413
    const v0, -0x3dff821f

    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    .line 415
    return-void
.end method

.method private removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 2
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 396
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 398
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private sendMessage(Lde/keyboardsurfer/android/widget/crouton/Crouton;I)V
    .locals 1
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .param p2, "messageId"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method private sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V
    .locals 1
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .param p2, "messageId"    # I
    .param p3, "delay"    # J

    .prologue
    .line 143
    invoke-virtual {p0, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, v0, p3, p4}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    return-void
.end method

.method private setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 6
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "actionBarContainerId":I
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "actionBarContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 285
    :cond_0
    return-void
.end method

.method private shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "croutonViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 1
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 80
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->displayCrouton()V

    .line 82
    return-void
.end method

.method clearCroutonQueue()V
    .locals 3

    .prologue
    .line 365
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessages()V

    .line 369
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 370
    .local v0, "crouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    goto :goto_0

    .line 372
    .end local v0    # "crouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    :cond_0
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 373
    return-void
.end method

.method clearCroutonsForActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 380
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 381
    .local v1, "croutonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lde/keyboardsurfer/android/widget/crouton/Crouton;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 383
    .local v0, "crouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 387
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 393
    .end local v0    # "crouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 156
    .local v0, "crouton":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 161
    :sswitch_0
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->displayCrouton()V

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    goto :goto_0

    .line 171
    :sswitch_2
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 172
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onRemoved()V

    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dff8b23 -> :sswitch_1
        -0x3dff821f -> :sswitch_2
        0xc2007 -> :sswitch_0
    .end sparse-switch
.end method

.method protected removeCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 6
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 296
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "croutonView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    .local v0, "croutonParentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    iget-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 306
    .local v2, "removed":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachActivity()V

    .line 309
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachViewGroup()V

    .line 310
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v3

    invoke-interface {v3}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onRemoved()V

    .line 313
    :cond_0
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachLifecycleCallback()V

    .line 318
    :cond_1
    const v3, 0xc2007

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, p1, v3, v4, v5}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    .line 320
    .end local v2    # "removed":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    :cond_2
    return-void
.end method

.method removeCroutonImmediately(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 4
    .param p1, "crouton"    # Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .prologue
    .line 335
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 342
    :cond_0
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 343
    .local v1, "croutonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lde/keyboardsurfer/android/widget/crouton/Crouton;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 345
    .local v0, "c":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 347
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 350
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 359
    .end local v0    # "c":Lde/keyboardsurfer/android/widget/crouton/Crouton;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manager{croutonQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
