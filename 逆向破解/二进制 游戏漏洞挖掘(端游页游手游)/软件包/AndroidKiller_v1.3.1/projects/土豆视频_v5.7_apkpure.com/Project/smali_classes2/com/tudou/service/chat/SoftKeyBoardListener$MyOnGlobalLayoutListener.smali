.class Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/chat/SoftKeyBoardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;


# direct methods
.method private constructor <init>(Lcom/tudou/service/chat/SoftKeyBoardListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/service/chat/SoftKeyBoardListener;Lcom/tudou/service/chat/SoftKeyBoardListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/service/chat/SoftKeyBoardListener;
    .param p2, "x1"    # Lcom/tudou/service/chat/SoftKeyBoardListener$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;-><init>(Lcom/tudou/service/chat/SoftKeyBoardListener;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v1, "r":Landroid/graphics/Rect;
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$100()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 40
    .local v2, "visibleHeight":I
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rootViewVisibleHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v5, v5, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",visibleHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v3, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-nez v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iput v2, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v3, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-eq v3, v2, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "activityState":I
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    invoke-static {v3}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$200(Lcom/tudou/service/chat/SoftKeyBoardListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    invoke-static {v3}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$200(Lcom/tudou/service/chat/SoftKeyBoardListener;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 55
    const/4 v0, 0x1

    .line 61
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v3, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v3, v2

    if-le v3, v6, :cond_5

    .line 62
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$300()Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 63
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$300()Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v4, v4, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v4, v2

    invoke-interface {v3, v4, v0}, Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(II)V

    .line 65
    :cond_3
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iput v2, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    goto :goto_0

    .line 57
    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    .line 70
    :cond_5
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v3, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v3, v2, v3

    if-le v3, v6, :cond_0

    .line 71
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$300()Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 72
    invoke-static {}, Lcom/tudou/service/chat/SoftKeyBoardListener;->access$300()Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iget v4, v4, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v4, v2, v4

    invoke-interface {v3, v4, v0}, Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(II)V

    .line 74
    :cond_6
    iget-object v3, p0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;->this$0:Lcom/tudou/service/chat/SoftKeyBoardListener;

    iput v2, v3, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootViewVisibleHeight:I

    goto :goto_0
.end method
