.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;
.super Ljava/lang/Object;
.source "ImageAdYoukuHtml5.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->startYoukuHtml5Ad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$300(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$300(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$302(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .line 227
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iput v2, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 228
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$400(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :cond_0
    return v2
.end method
