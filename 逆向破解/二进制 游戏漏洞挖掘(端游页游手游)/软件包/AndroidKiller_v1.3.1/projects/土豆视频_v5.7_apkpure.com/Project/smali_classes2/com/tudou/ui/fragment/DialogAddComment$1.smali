.class Lcom/tudou/ui/fragment/DialogAddComment$1;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DialogAddComment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DialogAddComment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Z)V
    .locals 6
    .param p1, "changed"    # Z

    .prologue
    .line 145
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/DialogAddComment;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->frame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 149
    .local v0, "bottom":I
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->frame:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 150
    .local v1, "right":I
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {}, Lcom/youku/phone/detail/DetailUtil;->readPortScreen()[I

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {}, Lcom/youku/phone/detail/DetailUtil;->readPortScreen()[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/tudou/ui/fragment/DialogAddComment;->port_blank:I

    .line 152
    const-string v2, "CommentDialogRelativeLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommentDialogRelativeLayout--------------------bottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", right = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port_blank = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget v4, v4, Lcom/tudou/ui/fragment/DialogAddComment;->port_blank:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 157
    add-int/lit16 v2, v0, 0xc8

    iget-object v3, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget v3, v3, Lcom/tudou/ui/fragment/DialogAddComment;->port_blank:I

    if-ge v2, v3, :cond_0

    .line 158
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tudou/ui/fragment/DialogAddComment;->isSoftVisible:Z

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-boolean v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->isSoftVisible:Z

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$1;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/tudou/ui/fragment/DialogAddComment;->isSoftVisible:Z

    goto :goto_0
.end method
