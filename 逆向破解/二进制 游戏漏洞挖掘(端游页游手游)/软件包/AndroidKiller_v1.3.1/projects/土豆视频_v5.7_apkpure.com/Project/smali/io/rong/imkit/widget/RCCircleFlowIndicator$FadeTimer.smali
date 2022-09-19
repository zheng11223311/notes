.class Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;
.super Landroid/os/AsyncTask;
.source "RCCircleFlowIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RCCircleFlowIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _run:Z

.field final synthetic this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

.field private timer:I


# direct methods
.method private constructor <init>(Lio/rong/imkit/widget/RCCircleFlowIndicator;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->timer:I

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->_run:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/widget/RCCircleFlowIndicator;Lio/rong/imkit/widget/RCCircleFlowIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imkit/widget/RCCircleFlowIndicator;
    .param p2, "x1"    # Lio/rong/imkit/widget/RCCircleFlowIndicator$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;-><init>(Lio/rong/imkit/widget/RCCircleFlowIndicator;)V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    .prologue
    .line 395
    iget-boolean v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->_run:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 407
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->_run:Z

    if-eqz v1, :cond_1

    .line 410
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 412
    iget v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->timer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->timer:I

    .line 415
    iget v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->timer:I

    iget-object v2, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    invoke-static {v2}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->access$200(Lio/rong/imkit/widget/RCCircleFlowIndicator;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->_run:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 429
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    invoke-virtual {v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->access$302(Lio/rong/imkit/widget/RCCircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 431
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    invoke-static {v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->access$300(Lio/rong/imkit/widget/RCCircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    iget-object v1, v1, Lio/rong/imkit/widget/RCCircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 432
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->this$0:Lio/rong/imkit/widget/RCCircleFlowIndicator;

    invoke-static {v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->access$300(Lio/rong/imkit/widget/RCCircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    return-void
.end method

.method public resetTimer()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->timer:I

    .line 403
    return-void
.end method
