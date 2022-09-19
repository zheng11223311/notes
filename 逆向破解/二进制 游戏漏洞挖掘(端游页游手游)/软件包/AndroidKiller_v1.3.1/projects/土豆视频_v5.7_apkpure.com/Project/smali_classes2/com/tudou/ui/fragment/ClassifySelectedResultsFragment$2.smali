.class Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$2;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "mLastY":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, "action":I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 240
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 241
    .local v2, "y":F
    int-to-float v3, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
