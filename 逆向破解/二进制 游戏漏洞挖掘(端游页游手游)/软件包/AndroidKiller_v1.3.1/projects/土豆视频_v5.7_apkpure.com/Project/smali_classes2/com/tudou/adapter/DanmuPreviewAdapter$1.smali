.class Lcom/tudou/adapter/DanmuPreviewAdapter$1;
.super Landroid/os/Handler;
.source "DanmuPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$1;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 88
    :cond_0
    return-void

    .line 48
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/LinearLayout;

    .line 49
    .local v3, "temp":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    .line 50
    .local v0, "a":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$1;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$008(Lcom/tudou/adapter/DanmuPreviewAdapter;)I

    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$1;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$000(Lcom/tudou/adapter/DanmuPreviewAdapter;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$1;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$100(Lcom/tudou/adapter/DanmuPreviewAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04001f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 56
    .local v1, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
