.class Lcom/tudou/ui/fragment/DialogAddComment$5;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->setImagePath(Ljava/lang/String;)V
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
    .line 204
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$5;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$5;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->mOnCommentImgClickLis:Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$5;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->mOnCommentImgClickLis:Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment$5;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;->onCommentImgClick(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method
