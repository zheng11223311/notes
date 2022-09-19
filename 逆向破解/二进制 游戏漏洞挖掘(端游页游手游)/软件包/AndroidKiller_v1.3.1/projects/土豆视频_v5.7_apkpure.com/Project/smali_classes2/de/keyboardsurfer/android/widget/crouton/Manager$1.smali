.class Lde/keyboardsurfer/android/widget/crouton/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/keyboardsurfer/android/widget/crouton/Manager;->addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

.field final synthetic val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

.field final synthetic val$croutonView:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/keyboardsurfer/android/widget/crouton/Manager;Landroid/view/View;Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    iput-object p3, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    :goto_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->announceForAccessibilityCompat(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 240
    const/4 v0, -0x1

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v1

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    const v2, -0x3dff821f

    iget-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v3

    iget v3, v3, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    int-to-long v4, v3

    iget-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v0, v1, v2, v4, v5}, Lde/keyboardsurfer/android/widget/crouton/Manager;->access$000(Lde/keyboardsurfer/android/widget/crouton/Manager;Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    .line 245
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
