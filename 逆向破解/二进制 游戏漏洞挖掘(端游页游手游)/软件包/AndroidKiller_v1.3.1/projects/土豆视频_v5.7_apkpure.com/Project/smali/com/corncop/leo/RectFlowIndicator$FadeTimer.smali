.class Lcom/corncop/leo/RectFlowIndicator$FadeTimer;
.super Landroid/os/AsyncTask;
.source "RectFlowIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/leo/RectFlowIndicator;
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

.field final synthetic this$0:Lcom/corncop/leo/RectFlowIndicator;

.field private timer:I


# direct methods
.method private constructor <init>(Lcom/corncop/leo/RectFlowIndicator;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->timer:I

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->_run:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/corncop/leo/RectFlowIndicator;Lcom/corncop/leo/RectFlowIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/corncop/leo/RectFlowIndicator;
    .param p2, "x1"    # Lcom/corncop/leo/RectFlowIndicator$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;-><init>(Lcom/corncop/leo/RectFlowIndicator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/corncop/leo/RectFlowIndicator$FadeTimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->_run:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 357
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->_run:Z

    if-eqz v1, :cond_1

    .line 360
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 362
    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->timer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->timer:I

    .line 365
    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->timer:I

    iget-object v2, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    invoke-static {v2}, Lcom/corncop/leo/RectFlowIndicator;->access$200(Lcom/corncop/leo/RectFlowIndicator;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->_run:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 345
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    iget-object v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    invoke-virtual {v1}, Lcom/corncop/leo/RectFlowIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/corncop/leo/RectFlowIndicator;->access$302(Lcom/corncop/leo/RectFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    invoke-static {v0}, Lcom/corncop/leo/RectFlowIndicator;->access$300(Lcom/corncop/leo/RectFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    iget-object v1, v1, Lcom/corncop/leo/RectFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    iget-object v1, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->this$0:Lcom/corncop/leo/RectFlowIndicator;

    invoke-static {v1}, Lcom/corncop/leo/RectFlowIndicator;->access$300(Lcom/corncop/leo/RectFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/corncop/leo/RectFlowIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    return-void
.end method

.method public resetTimer()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->timer:I

    .line 353
    return-void
.end method
